<?php
session_start();
include ('../../../connect.php');
$id_info = $_GET['id_informasi'];
$id_tourism = $_POST['id_informasi'];
//echo "$id_info --> id_info";

	$sql1   = "delete from information_admin where id_informasi = $id_info";
	$delete1 = pg_query($sql1);
	if ($delete1){
		echo "<script>alert ('Data Successfully Delete');</script>";
	}
	else{
		echo "<script>alert ('Error');</script>";
	}

	
	if($_SESSION['A']===true){
	echo "<script>eval(\"location:../?page=tourism_detail&id=$id_tourism\");</script>";

	echo "<script>
	eval(\"parent.location='../?page=home'\");
	</script>";
	}
	else{
		echo "<script>eval(\"location:../indexu.php?page=tourism_detail&id=$id_tourism\");</script>";

		echo "<script>
		eval(\"location='../indexu.php?page=homeu'\");
		</script>";
	}

	


?>