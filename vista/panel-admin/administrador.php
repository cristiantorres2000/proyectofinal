<?php
     session_start();
    
    if(!isset($_SESSION['cargo']) == 1){
    header('location: ../pages-login');
  }
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>INICIO</title>
    <!-- Google Font - Iconos -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core Css -->
    <link href="../../assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="../../assets/plugins/node-waves/waves.css" rel="stylesheet" />
    <!-- Animation Css -->
    <link href="../../assets/plugins/animate-css/animate.css" rel="stylesheet" />
    <link href="../../css/style.css" rel="stylesheet">

    <link href="../../assets/css/themes/all-themes.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>


</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Cargando...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->

    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->


    <!-- //LUPA -->

    <!-- Top Bar --> 
    <nav class="navbar">
        
        <div class="container-fluid">
            
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="administrador"> DASHBOARD </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                  
                <div class="user-info">
                <img src="../../assets/img/mujerico.png" width="48" height="48" alt="User" />

            
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo ucfirst($_SESSION['nombre']); ?></div>
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        
                        <ul class="dropdown-menu pull-right">
                            <li><a href="../config/configuracion"><i class="material-icons">brightness_low</i>Mi Cuenta</a></li>
                            <li role="separator" class="divider"></li>
                            <li role="separator" class="divider"></li>

                            <li><a href="../pages-logout"><i class="material-icons">input</i>Cerrar Sesión</a></li>
                        </ul>
                    </div>
                </div>
            </div>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->

    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
        
            <!-- #User Info -->

            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MENÚ DE NAVEGACIÓN</li>
                    <li class="active">
                        <a href="administrador">
                            <i class="material-icons">home</i>
                            <span>INICIO</span>
                        </a>
                    </li>


<!--======================================================================================================-->
					<li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">supervisor_account</i>
                            <span>CLIENTES</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../clientes/nuevo">Registrar</a>
                            </li>
                            <li>
                                <a href="../../folder/clientes">Listar / Modificar</a>
                            </li>
                        </ul>
                    </li>

<!--======================================================================================================-->
					<li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">person_pin</i>
                            <span>USUARIOS</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="">Registrar</a>
                            </li>
                            <li>
                                <a href="">Listar / Modificar</a>
                            </li>
                        </ul>
                    </li>
<!--======================================================================================================-->
					<li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">person_pin</i>
                            <span>CAJA</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                           
                            </li>
                        </ul>
                    </li>
<!--======================================================================================================-->
<li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">pets</i>
                            <span>MASCOTAS</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../mascotas/nuevo">Registrar</a>
                            </li>
                            <li>
                                <a href="../../folder/mascotas">Listar / Modificar</a>
                            </li>
                            <li>
                                <a href="../../folder/tipo">Tipos</a>
                            </li>
                            <li>
                                <a href="../../folder/raza">Razas</a>
                            </li>
                            <li>
                                <a href="../../folder/enfermedad">Enfermedades</a>
                            </li>
                        </ul>
</li>

<!--======================================================================================================-->
<li>
<a href=" ../finanzas/finanzas  ">
<i class="material-icons">money</i>
                            <span>FINANZAS</span>
                        </a>
                    </li>
<!--======================================================================================================-->
<li>
<a href="administrador">
                            <i class="material-icons">add</i>
                            <span>DATOS 
                                ESTADISTICOS
                            </span>
                            
                        </a>
                    </li>
                    <!--======================================================================================================-->
<li>
<a href="../config/configuracion">
                            <i class="material-icons">settings</i>
                            
                            <span>CONFIGURACION</span>
                        </a>
                    </li>
<!--======================================================================================================-->
        <aside id="rightsidebar" class="right-sidebar">
        </aside>
    </section>
<!--=============================================================CONTENIDO DE LA PÁGINA =============================================================-->

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
              
            </div>

            <!-- SubMenu1 -->
            <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-pink hover-expand-effect">

                    	<a href="../../folder/clientes">
                        	<div class="icon">
                            	<i class="material-icons">person</i>
                        	</div>
                        </a>

                        <?php
$db_host="localhost"; 
$db_user="root";    
$db_password="";    
$db_name="vetdog";    
try
{
    $db=new PDO("mysql:host={$db_host};dbname={$db_name}",$db_user,$db_password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}


catch(PDOEXCEPTION $e)
{
    $e->getMessage();
}
$sql = "SELECT COUNT(*) total FROM owner";
$result = $db->query($sql); //$pdo sería el objeto conexión
$total = $result->fetchColumn();
?>
                        <div class="content">
                            <div class="text">CLIENTES</div>
                            <div class="number count-to" data-from="0" data-to="<?php echo  $total; ?>" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-orange hover-expand-effect">
                    	<a href="../../folder/mascotas">
                        <div class="icon">
                            <i class="material-icons">pets</i>
                        </div>
                        </a>
<?php
$db_host="localhost"; 
$db_user="root";    
$db_password="";    
$db_name="vetdog";    
try
{
    $db=new PDO("mysql:host={$db_host};dbname={$db_name}",$db_user,$db_password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOEXCEPTION $e)
{
    $e->getMessage();
}

$sql = "SELECT COUNT(*) total FROM pet";
$result = $db->query($sql); //$pdo sería el objeto conexión
$total = $result->fetchColumn();
?>             
                        <div class="content">
                            <div class="text">MASCOTAS</div>
                            <div class="number count-to" data-from="0" data-to="<?php echo  $total; ?>" data-speed="1000" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>


         

         <?php
$db_host="localhost"; 
$db_user="root";    
$db_password="";    
$db_name="vetdog";    
try
{
    $db=new PDO("mysql:host={$db_host};dbname={$db_name}",$db_user,$db_password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch(PDOEXCEPTION $e)
{
    $e->getMessage();
}

?>             
                   
                    </div>
                </div>



				

            </div>

        
  


<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="panel panel-default">

                <div class="panel-body">

                    <div id="containers"></div>

                </div>

            </div>           
    </div>
</div>





                                    <?php 

          
    ?>
                                    
                                </tbody>
                                  
                              </table>

                            </div>
                        </div>
   
                    </div>


<!-- ACA VA LAS VENTAS -->



                </div>
</div>



    <!-- Jquery Core Js -->
   
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>
<script src="../../assets/js/Chart.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<figure class="highcharts-figure">
  <div id="container"></div>
  <p class="highcharts-description">
  
    <script src="../../assets/js/grafico.js"></script>

  </p>
</figure>


      

    <!-- Bootstrap Core Js -->
    <script src="../../assets/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Js Booststrap -->
    <script src="../../assets/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!--Js Scroll - Barra de Desplazamiento del Menú -->
    <script src="../../assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!--Js Efectos de Página Completa -->
    <script src="../../assets/plugins/node-waves/waves.js"></script>

    <!-- JS Conteo de Números del SubMenú-->
    <script src="../../assets/plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Custom Js -->
    <script src="../../assets/js/admin.js"></script>
    <script src="../../assets/js/pages/index.js"></script>





    







</body>

</html>
