<?php


session_start();
if(!(isset($_SESSION['email'])))
  {
	   header('Location: register.php');
  }
include "includes/dbconnect.php";
	

	$email=$_POST['user_email'];
	$password=md5($_POST['user_password']);

	$query="SELECT * FROM `users` WHERE `email` LIKE '$email' AND `password` LIKE '$password'";

	//running the serch in DB and storing in $result
	$result=mysqli_query($connection,$query);

	//function to return the number of rows in $result

	$num_rows=mysqli_num_rows($result);

	if($num_rows==1)
	{
		//correct login

		//retriving session name

		$row=mysqli_fetch_assoc($result);
		$_SESSION['fname']=$row['fname'];
		$_SESSION['email']=$row['email'];
		$_SESSION['user_id']=$row['user_id'];
		
		if(($_SESSION['email']=="admin@paws.com"))
		{
			header('Location: admin.php');
		}
		else
			header('Location: products.php');
	}
	else
	{	//incorrect login
		//redirect
		header('Location: index.php');
	}


?>