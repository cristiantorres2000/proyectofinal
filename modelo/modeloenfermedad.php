<?php
class Modelo{

  private $enfermedad;
  private $db;

  public function __construct(){
      $this->raza=array();
      $this->db=new PDO('mysql:host=localhost;dbname=vetdog',"root","");
  }
  public function mostrar($tabla,$condicion){
      $consulta="SELECT enfermedad.idenfermedad,enfermedad.nombreenfermedad FROM enfermedad";

      $resultado=$this->db->query($consulta);
      while ($tabla=$resultado->fetchAll(PDO::FETCH_ASSOC)) {
          $this->raza[]=$tabla;
      }
      return $this->raza;
    }
    public function  insertar(Modelo $data){
    try {
    $query="INSERT INTO enfermedad (idenfermedad,nombreenfermedad)VALUES(?,?)";

      $this->db->prepare($query)->execute(array($data->nombreenfermedad));

    }catch (Exception $e) {

      die($e->getMessage());
    }
    }
	
  public function actualizar($tabla,$data,$condicion){
      $consulta="UPDATE $tabla SET $data WHERE $condicion";
      $resultado=$this->db->query($consulta);
      if($resultado){
          return true;
      }else{
          return false;
      }
  }
  public function eliminar($tabla,$condicion){
      $consulta="DELETE FROM $tabla WHERE $condicion";
      $resultado=$this->db->query($consulta);
      if($resultado){
          return true;
      }else{
          return false;
      }
  }
}

 ?>
