<?php



$conexion = mysqli_connect("localhost","root","","vetdog");

$query = $conexion->query("SELECT * FROM enfermedad");

while ( $row = $query->fetch_assoc() )
{
	echo '<option value="' . $row['idenfermedad']. '">' . $row['nombreenfermedad'] . '</option>' . "\n";

}



?>
