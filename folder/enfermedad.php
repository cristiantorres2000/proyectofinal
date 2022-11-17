<?php
require_once '../controlador/enfermedadcontrolador.php';
$objenfermedad=new enfermedadcontrolador();
$op="mostrar";
if(isset($_REQUEST['op']))
    $op=$_REQUEST['op'];
    if($op=="mostrar")
    $objenfermedad->mostrar();
    elseif ($op=="nuevo")
        $objenfermedad->nuevo();
    elseif ($op=="guardar")
        $objenfermedad->guardar();
    elseif ($op=="editar")
        $objenfermedad->editar();
    elseif($op=="update")
        $objenfermedad->update();
        elseif($op=="insertar")
            $objenfermedad->insertar();
        elseif($op=="recibir")
            $objenfermedad->recibir();
            elseif($op=="eliminar")
                $objenfermedad->eliminar();
?>
