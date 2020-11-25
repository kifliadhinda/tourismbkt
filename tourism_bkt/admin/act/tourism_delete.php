<?php
include ('../../../connect.php');
$id = $_GET['id'];
	$sql1 = pg_query("Delete from tourism_gallery where id ='$id'");
	$sql2 = pg_query("Delete from detail_facility_tourism where id_tourism = '$id'");
	$sql   = "delete from tourism where id='$id'";
	$queri1 = pg_query("delete from information_admin where id_ow = '$id'");
	$queri2 = pg_query("delete from review where id_ow = '$id'");

	
	$delete = pg_query($sql);
	if ($queri1 && $queri2){
		if($delete){
		echo "<script>
		alert (' Data Successfully Delete');
		</script>";}
	}
	else{
		echo "<script>
		alert ('Error');
		</script>";
	}

echo "<script>
eval(\"parent.location='../?page=home'\");
</script>";

?>