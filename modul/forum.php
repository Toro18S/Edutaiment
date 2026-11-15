<div  data-scrollreveal="enter left and move 40px over 0.8s">
  
    <header>
            <div class="row">
                <div class="col-lg-12"><br><br><br><br><br><br>
                    <img class="img-responsive" src="startbootstrap/img/portfolio/frm.png"  alt="">
                    <div class="intro-text">
                       <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="?tampil=pertanyaan" class="btn btn-lg btn-outline">
                        <i class=""></i>Saya Ingin Bertanya
                    </a>
                        <span class="name">Forum Diskusi</span>
                        <hr class="star-light">
                    <marquee><span class="skills">Diskusi seputar mata pelajaran animasi 3D
                     (jika ingin bertanya silahkan klik tombol diatas "saya ingin bertanya")</span></marquee>
                </div>
                    </div>
                </div>
            </div>
        </div>
    </header><br>

 <?php
    if(!defined("INDEX")) die("---");
    
    $pertanyaan = mysql_query("select distinct(id_pertanyaan), tabel_loginsiswa.nama, pertanyaan.judul, pertanyaan.isi, pertanyaan.tanggal from
    pertanyaan JOIN tabel_loginsiswa ON tabel_loginsiswa.id_loginsiswa=pertanyaan.id_loginsiswa where publish='N' order by id_pertanyaan desc");

    while($data=mysql_fetch_array($pertanyaan)){
        $isi = substr($data['isi'],0,500);
        $isi = substr($data['isi'],0,strrpos($isi," "));

?>

<div class="container">
     
    <div class="galeri">
        <div class="row gallery">

 <div class="col-sm-4 wowload fadeInUp">

<h3 class="fancybox"><?php echo $data['judul']; ?></h3>
<h4><?php echo $data['nama']; ?></h4>
    <h4><?php echo $data['tanggal']; ?></h4>

    <?php echo $isi; ?> ... 

     <a href="?tampil=pertanyaan_jawab&id=<?php echo $data['id_pertanyaan']; ?>" class="btn btn-default btn-xs">Lihat</a>

</div>
<?php
}       
?>                 