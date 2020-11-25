<?php
	$host = "ec2-54-84-98-18.compute-1.amazonaws.com";
	$user = "bszykbesevjifb";
	$pass = "5190a566577d022e6c5fe196fa4f061d1875d4a93c510100fe00bb743c13111e";
	$port = "5432";
	$dbname = "d22m1rf3ktnlg1";
	$conn = pg_connect("host=".$host." port=".$port." dbname=".$dbname." user=".$user." password=".$pass) or die("Gagal");
	// header("Access-Control-Allow-Origin: *");
?>
