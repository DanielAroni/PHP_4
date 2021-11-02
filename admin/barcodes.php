<!DOCTYPE html>
<html lang="en">
<?php
include 'action/check-login.php';
error_reporting(0);
?>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tienda Web | Codigo de Barras</title>
        <link type="text/css" href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="../css/theme.css" rel="stylesheet">
        <link type="text/css" href="../images/icons/css/font-awesome.css" rel="stylesheet">
		<link rel="icon" href="../images/icon.png">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="#">Shop Manager</a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                                                <form class="navbar-search pull-left input-append" action="action/search_product.php" method="POST">
                        <input type="text" class="span3" placeholder="Search for product....." name="product" required>
                        <button class="btn" type="submit">
                            <i class="icon-search"></i>
                        </button>
                        </form>
                        <ul class="nav pull-right">
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<?php
							if ($SEshoplogo == null) {
								print '<img src="../images/shop.png" class="nav-avatar" />';
							}else{
						      print '<img src="data:image/jpeg;base64,'.base64_encode($SEshoplogo ).'"  class="nav-avatar"/>';
							}
							?>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="account_settings.php">Configuraciones</a></li>
                                    <li class="divider"></li>
                                    <li><a href="logout.php">Cerrar Sesion</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                
                </div>
            </div>
     
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="./"><i class="menu-icon icon-dashboard"></i>Tablero
                                </a></li>
                                <li><a href="new_stock.php"><i class="menu-icon icon-shopping-cart"></i>Nuevo Stock </a>
                                </li>
                                <li><a href="stock_list.php"><i class="menu-icon icon-shopping-cart"></i>Lista de Stock</a></li>
                                <li><a href="barcodes.php"><i class="menu-icon icon-barcode"></i>Generar Codigo de Barras</a></li>
                            </ul>
          
                            <ul class="widget widget-menu unstyled">
                                <li><a href="product_categories.php"><i class="menu-icon icon-filter"></i> Categorias de Productos</a></li>
                                <li><a href="product_units.php"><i class="menu-icon icon-glass"></i> Productos por Unidad </a></li>
                            </ul>
                            
                            <ul class="widget widget-menu unstyled">
                                <li><a href="new_user.php"><i class="menu-icon icon-user"></i> Nuevo Usuario </a></li>
                                <li><a href="my_users.php"><i class="menu-icon icon-user"></i> Usuario </a></li>
                            </ul>
							
							<ul class="widget widget-menu unstyled">
                                <li><a href="add_sales.php"><i class="menu-icon icon-money"></i> Nuevas Ventas</a></li>
                                <li><a href="sales.php"><i class="menu-icon icon-money"></i> Ventas </a></li>
								<li><a href="sales_summary.php"><i class="menu-icon icon-bar-chart"></i>Resumen de Ventas</a></li>
                            </ul>

                        </div>
             
                    </div>
            
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h3>
                                        Codigo de Barras</h3>
                                </div>
                                <div class="module-body table">
                                 <?php
								 include '../config/db_config.php';
								 
								 $sql = "SELECT * FROM products WHERE shop_id = '$SEshopno'";
                                 $result = $conn->query($sql);

                                 if ($result->num_rows > 0) {
									 print '
									  <table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display"
                                        width="100%">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Product ID
                                                </th>
                                                <th>
                                                    Product Name
                                                </th>
                                                <th>
                                                    Barcode Text
                                                </th>
                                                <th>
                                                    Barcode
                                                </th>
											
                                            </tr>
                                        </thead>
                                        <tbody>';
    
                                  while($row = $result->fetch_assoc()) {
									  $exdate = ''.$row['expire_date'].'-'.$row['expire_month'].'-'.$row['expire_year'].'';
                               print '<tr class="odd gradeX">
                                                <td>
                                                    '.$row['product_id'].'
                                                </td>
                                                <td>
                                                    '.$row['name'].'
                                                </td>
                                                <td>
                                                    '.$row['barcode'].'
                                                </td>
                            
												<td>';?>  <?php
                                            $text=$row['barcode'];
 echo "<center><img src='barcode/barcode.php?codetype=Code128&size=40&text=".$text."&print=true'/></center>";
 print '
                                                </td>

                                            </tr>';
                                    }
                                    } else {
                                     print '
									<div class="module-body">
                                 <div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<h3 style="color:green">No se ha Encontrado Ningun Producto!</h3>
                                        Todos los códigos de barras de los productos que registres se generarán aquí.
									</div>
									</div>';
                                       }
									   
									   print ' </tbody>
                                
                                    </table>';
                                     $conn->close();
								 ?>
                                </div>
                            </div>

                       
                        </div>
                 
                    </div>
    
                </div>
            </div>
   
        </div>

        <div class="footer">
            <div class="container">
              <b class="copyright">&copy; <?php echo date('Y') ?> Shop Manager - Developed by <a target="_blank" href="https://www.facebook.com/narbie1995">Bwire Charles Mashauri</a> and  <a target="_blank" href="https://www.facebook.com/daudyskyy">Azizi Selemani Daudy</a></b> All rights reserved.
            </div>
        </div>
        <script src="../scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="../scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="../scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="../scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../scripts/common.js" type="text/javascript"></script>
      
    </body>
