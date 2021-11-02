<!DOCTYPE html>
<html lang="en">
<?php
error_reporting(0);
session_start();
if (isset($_SESSION['registered']) && $_SESSION['registered'] == true) {
	
}else{
	header("location:./");
}
$check = $_SESSION['registered'];

if ($check = true){
	$shop_name = $_SESSION['shopname'];
    $hop_currency = $_SESSION['currency'];
	$shop_id = $_SESSION['shopid'];
	$shop_username = $_SESSION['shopuser'];
	$shop_email = $_SESSION['email'];
	$shop_timezone = $_SESSION['mytimezone'];
}else{
	header("location:./");
}
?>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Tienda Web | Confirmar Pedido</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	<link rel="icon" href="images/icon.png">

</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="./">
			  		Tienda Web
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
				
					<ul class="nav pull-right">

						<li><a href="./">
							Accede a tu Cuenta
						</a></li>

						

						<li><a href="reset-password.php">
							Olvidaste tu Contraseña?
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>



	<div class="wrapper" style="background-image: url(images/Imagen3.jpg);">
		<div class="container" >
			<div class="row">
				<div class="module module-login span8 offset2">
					<form class="form-vertical" action="action/new-shop.php" method="POST">
						<div class="module-head">
							<h3>Confirmar Pedido</h3>
						</div>
						<div class="module-body">
						Tus Pedidos
						<table class="table">
								  <thead>
									<tr style="border: 0;">
									  <th >#</th>
									  <th>Descripcion</th>
									  <th>Monto</th>
									
									</tr>
								  </thead>
								  <tbody>
									<tr>
									  <td>1</td>
									  <td>Producto A</td>
									  <td>0.00 <?php echo"$hop_currency"; ?></td>
					
									</tr>
									
																		<tr>
									  <td></td>
									  <td></td>
									  <td>Total 0.00 <?php echo"$hop_currency"; ?></td>
					
									</tr>
									
								  </tbody>
								</table>
								
								Informacion de tu Cuenta
										<table class="table">
											  <thead>
									<tr style="border: 0;">
									  <th >#</th>
									  <th>Descripcion</th>
									  <th>Informacion</th>
									
									</tr>
								  </thead>
								  <tbody>
									<tr>
									  <td>1</td>
									  <td>ID</td>
									  <td><b><?php echo"$shop_id"; ?></b></td>
					
									</tr>
									<tr>
									  <td>2</td>
									  <td>Nombre de la Tienda</td>
									  <td><b><?php echo"$shop_name"; ?></b></td>
					
									</tr>
																		<tr>
									  <td>3</td>
									  <td>Moneda Utilizada</td>
									  <td><b><?php echo"$hop_currency"; ?></b></td>
					
									</tr>
																		<tr>
									  <td>4</td>
									  <td>Nombre de Usuario</td>
									  <td><b><?php echo"$shop_username"; ?></b></td>
					
									</tr>
									
																											<tr>
									  <td>5</td>
									  <td>Correo Electronico Registrado</td>
									  <td><b><?php echo"$shop_email"; ?></b></td>
					
									</tr>
																																				<tr>
									  <td>6</td>
									  <td>Zona Horaria</td>
									  <td><b><?php echo"$shop_timezone"; ?></b></td>
					
									</tr>
								  </tbody>
								</table>
			
						</div>
						<div class="module-foot">
							<div class="control-group">
								<div class="controls clearfix">
									
								
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; <?php echo date('Y') ?> Tienda Web - Developed by <a target="_blank" href="https://www.facebook.com/narbie1995">Bwire Charles Mashauri</a> y  <a target="_blank" href="https://www.facebook.com/daudyskyy">Azizi Selemani Daudy</a></b> Derechos Reservados.
		</div>
	</div>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>