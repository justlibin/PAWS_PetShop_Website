<?php
	session_start();
	if(!(isset($_SESSION['email'])))
  	{
    	header('Location: register.php');
  	}
	include "includes/dbconnect.php";

	$pet_id=$_POST['pet_id'];
	$user_id=$_SESSION['user_id'];
	$review_heading=$_POST['review_heading'];
	$review_text=$_POST['review_text'];
	
	$query1="SELECT * FROM `reviews` WHERE `pet_id` LIKE '$pet_id' AND `user_id` LIKE '$user_id'";
	$result1=mysqli_query($connection,$query1);
		
	if(mysqli_num_rows($result1)==0)
	{
		$query="INSERT INTO `reviews` (`review_id`, `user_id`, `pet_id`, `review_heading`, `review_text`) VALUES (NULL, '$user_id', '$pet_id', '$review_heading', '$review_text')";
		if(mysqli_query($connection,$query))
		{
			header('Location: show_cart_items.php?pet_id='.$pet_id.'&msg=11'); //redirect**
		}
		else
		{
			header('Location: show_cart_items.php?pet_id='.$pet_id.'&msg=33');
		}
	}
	elseif(mysqli_num_rows($result1)==1)
	{
		header('Location: show_cart_items.php?pet_id='.$pet_id.'&msg=22');
	}
	else
	{
		echo "Some Error Occured";
	}
	
?>