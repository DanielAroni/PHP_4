<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Tienda Web | Restablecer Contraseña</title>
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

						<li><a href="register-shop.php">
							Registra tu Compra
						</a></li>

						

						<li><a href="./">
							Accede a tu Cuenta
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>



	<div class="wrapper" style="background-image: url(images/Imagen4.jpg);">
		<div class="container" >
			<div class="row">
				<div class="module module-login span4 offset4">
					<form class="form-vertical" action="action/find-account.php" method="POST">
						<div class="module-head">
							<h3>Restablecer Contraseña</h3>
						</div>

						<div class="module-body">
								<?php
					
								  
								if(isset($_GET['err'])) {
									print '
									<div class="alert alert-danger">
										<button type="button" class="close" data-dismiss="alert">×</button>
										'.$_GET['err'].' 
									</div>
									';
								}else{
									
								}
								
								if(isset($_GET['in'])) {
									print '
									<div class="alert alert-info">
										<button type="button" class="close" data-dismiss="alert">×</button>
										'.$_GET['err'].' 
									</div>
									';
								}else{
									
								}
								?>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="email" id="inputEmail" placeholder="Correo Electronico" name="email" required>
								</div>
							</div>
							
													<div class="control-group">
								<div class="controls row-fluid">
								<select name="role" class="span12">
								<option value="shops">Administrador</option>
								<option value="users">Usuario Estandar</option>
								</select>
								
								</div>
							</div>
						</div>
						<div class="module-foot">
							<div class="control-group">
								<div class="controls clearfix">
									<button type="submit" class="btn btn-primary pull-right">Encontrar mi Cuenta</button>
								
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