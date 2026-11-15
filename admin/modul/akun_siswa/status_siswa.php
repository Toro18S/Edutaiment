<?php  
        
        $kode= $_GET['id'];

                                  
                                 
        $caridata = mysqli_query($koneksi,"SELECT * FROM tabel_loginsiswa where id_loginsiswa='$kode'");
        $data = mysqli_fetch_array($caridata);
        
        if ($data['aktif']=='Y'){
              $sql=mysqli_query($koneksi,"UPDATE tabel_loginsiswa set aktif='N' where id_loginsiswa='$kode'" );

                   
        } 
        if ($data['aktif']=='N'){
             $sql=mysqli_query($koneksi,"UPDATE tabel_loginsiswa set aktif='Y' where id_loginsiswa='$kode'" );

                  
        }      
    
    echo"Update Status";
    echo"<meta http-equiv='refresh' content='1; url=?page=akun_siswa'>";  
?>        