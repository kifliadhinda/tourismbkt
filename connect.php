<?php
	$host = "localhost";
	$user = "postgres";
	$pass = "password";
	$port = "5432";
	$dbname = "tgsiisi";
	$conn = pg_connect("host=".$host." port=".$port." dbname=".$dbname." user=".$user." password=".$pass) or die("Gagal");
	// header("Access-Control-Allow-Origin: *");
?>