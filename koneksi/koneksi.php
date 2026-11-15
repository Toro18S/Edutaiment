<?php
$host="localhost";
$user="root";
$pass="";
$db="edutainment";

$koneksi=mysqli_connect($host,$user,$pass,$db);

if(mysqli_connect_errno()){
echo "Gagal koneksi ke database: " .mysqli_connect_errno();

}
?>