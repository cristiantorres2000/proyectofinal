<?php
require_once '../modelo/modeloenfermedad.php';
class enfermedadcontrolador{

    public $model;
  public function __construct() {
        $this->model=new Modelo();
    }
    function mostrar(){
        $raza=new Modelo();

        $dato=$raza->mostrar("raza", "1");
        require_once '../vista/enfermedad/mostrar.php';
    }


    //INSERTAR
  public  function nuevo(){
        require_once '../vista/enfermedad/nuevo';
    }
    //aca ando haciendo
    public function recibir(){
                $alm = new Modelo();
                $alm->nomraza=$_POST['txtnombreenfermedad'];
                
                
     $this->model->insertar($alm);
     //-------------
header("Location: enfermedad.php");

          }


    }
