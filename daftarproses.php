<?php
	include 'koneksi/koneksi.php'; 

	$nama	= $_POST['nama'];
	$username	= $_POST['username']; 
	$password	= $_POST['password'];
	$kelas	= $_POST['kelas'];
	
	$tgl	= date('Ymd');
	
	mysqli_query($koneksi,"insert into tabel_loginsiswa set nama='$nama', username='$username', password='$password', kelas='$kelas', tanggal='$tgl'") or die(mysqli_error());
	

	echo"Tunggu dikonfirmasi oleh admin";
	echo"<meta http-equiv='refresh' content='1; url=index.php'>";
?>