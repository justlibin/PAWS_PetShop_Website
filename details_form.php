<?php
	session_start();
	if(!(isset($_SESSION['email'])))
  	{
   		header('Location: register.php');
  	}
	include "includes/dbconnect.php";
	$pet_id=$_GET['pet_id'];
	$user_id=$_SESSION['user_id'];
	

?>
<!DOCTYPE html>
<html>
	<?php include "includes/css_header.php" ?>
	<body style="background-color: #EEEEEE;">
		<?php include "includes/header_postlogin.php" ?>
		
		<div class="row">
			<div class="col-md-6">
				<h1 class="text-center"> <b>Please enter the shipping details of this pet. Thank you..</b> </h1><br>
				<i class="text-center"><b>NOTE: COD</b></i>
			</div>
			<div class="col-md-6">

				<form class="text-center" action="add_to_details.php" method="POST">
					<input type="hidden" name="pet_id" value=" <?php echo $pet_id; ?>">
					<label><h3><b>Please enter your Address: </b></h3></label>
					<input type="text" name="address" class="form-control" placeholder="Address..."><br>
					<label><h3><b>Please enter Phone number: </b></h3></label>
					<input type="text" name="address" class="form-control" placeholder="Address..."><br>
					<label><h3><b>Pet type: </b></h3></label>
					<input type="text"  name="name" class="form-control" placeholder="....NAME....."><br>
					<input type="submit" value="Submit Details" class="btn btn-danger btn-lg">
				</form>
			</div>
		</div>
	</body>
</html>