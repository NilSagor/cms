<?php include('includes/db.php'); ?>
	<?php include('includes/header.php'); ?>

	<?php 

	if (isset($_POSR['submit'])) {
		$username 	= $_POSR['username'];
		$email		= $_POSR['email'];
		$password	=$_POSR['password'];
	}


	 ?>

		<!-- Navigation -->
		<?php include('includes/navigation.php'); ?>

		<!-- Page Content -->
		<div class="container">
			<section id="login">
				<div class="container">
					<div class="row">
						<div class="col-xs-6 col-xs-offset-3">
							<div class="form-wrap">
								<h1>Register</h1>
									<form role="form" action="registration.php" method="post" id="login-form" autocomplete="off" >
										<div class="from-group">
											<label for="username"class="sr-only">Username</label>
											<input type="text" name="username" id="username" class="form-control" placeholder="Enter your desired username">
										</div>
										<div class="from-group">
											<label for="email"class="sr-only">Username</label>
											<input type="email" name="email" id="email" class="form-control" placeholder="someone@example.com">
										</div>
										<div class="from-group">
											<label for="password"class="sr-only">Username</label>
											<input type="password" name="password" id="password" class="form-control" placeholder="Enter your desired password">
										</div>
										<input type="submit" name="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Register">						
									</form>
							</div>
							<!-- /form-wrap -->
						</div>
						<!--  -->
					</div>
				</div>

			</section>
			<!-- /section -->
		</div>
		<!-- /container -->
		<hr>


		<!-- Footer -->
		<?php include('includes/footer.php'); ?>