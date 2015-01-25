<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "web";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) 
	{
		die("Connection failed: " . $conn->connect_error);
	} 

$tgl=date('y-m-d');
$id =$_POST['id'];
$nama=$_POST['nama'];
$harga=$_POST['harga'];
$gambar=$_POST['gambar'];
$total=$_POST['total'];
$qty=$_POST['qty'];

$sql = "INSERT INTO mspembelian (tglpembelian,id,nama,harga,gambar,qty,total)
VALUES ('$tgl','$id','$nama','$harga','$gambar','$qty','$qty')";

if ($conn->query($sql) === TRUE) 
{
    echo "Terima Kasih Sudah Berbelanja Di Bun`s Shop :D";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>