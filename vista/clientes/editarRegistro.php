<?php
    session_start();
    Class Connection{
 
    private $server = "mysql:host=localhost;dbname=vetdog";
    private $username = "root";
    private $password = "";
    private $options  = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,);
    protected $conn;
    
    public function open(){
        try{
            $this->conn = new PDO($this->server, $this->username, $this->password, $this->options);
            return $this->conn;
        }
        catch (PDOException $e){
            echo "Hubo un problema con la conexión: " . $e->getMessage();
        }
 
    }
 
    public function close(){
        $this->conn = null;
    }
 
}

    if(isset($_POST['update'])){
        $database = new Connection();
        $db = $database->open();
        try{
            $id = $_GET['id'];
           
            
            $dni_due = $_POST['dni_due'];
            $digito_ver =$_POST['digito_ver'];

            $nom_due =htmlspecialchars($_POST['nom_due']);
            $ape_due =htmlspecialchars($_POST['ape_due']);
            $movil = $_POST['movil'];
            $correo = $_POST['correo'];
            $direc = $_POST['direc'];

           
            
$sql = "UPDATE owner SET dni_due = '$dni_due', digito_ver= '$digito_ver', nom_due = '$nom_due', ape_due = '$ape_due', movil = '$movil', correo = '$correo',direc = '$direc' WHERE  id_due  = '$id'";
            //if-else statement in executing our query
            $_SESSION['message'] = ( $db->exec($sql) ) ? 'Cliente actualizado correctamente' : 'No se puso actualizar el cliente';

        }
        catch(PDOException $e){
            $_SESSION['message'] = $e->getMessage();
        }

        //Cerrar la conexión
        $database->close();
    }
    else{
        $_SESSION['message'] = 'Complete el formulario de edición';
    }

    header('location: ../../folder/clientes');

?>