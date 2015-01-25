<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "web";

$conn = new mysqli($servername, $username ,$password , $dbname);
if($conn->connect_error)
{
die("Connection failed : ".$conn->connect_error);
}
$sql = "select nama,deskripsi,label,harga,ID,image from product";
$result = $conn->query($sql);

$nm=array();


while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{
	$nm[]= array("nama"=>$row["nama"],"deskripsi"=>$row["deskripsi"],"label"=>$row["label"],"harga"=>$row["harga"],"ID"=>$row["ID"],"image"=>$row["image"],"image"=>$row["image"]);
}   

	$data = array(
			"product"=>
			$nm
		
		);
		echo json_encode($data);
	?>