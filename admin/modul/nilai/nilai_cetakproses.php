<?php
    $nama_dokumen = 'Laporan Nilai';
    define('_MPDF_PATH','MPDF57/');
    include(_MPDF_PATH . "mpdf.php");
    $mpdf = new mPDF('utf-8', 'A4');
    ob_start();
?>

<center>
<table style="border-bottom: 2pt solid black;">
    <tr>
        <td colspan="1"><img src="../../images/logo_bhakti.png" width="85" height="100"></td>
        <td align="center">
            <font size="3">SMK BHAKTI LOA JANAN JURUSAN TEKNIK MULTIMEDIA</font><br>
            <font size="6">LAPORAN NILAI SISWA</font><br>
            <font size="3">Jalan Gajah Mada, Telepon: (0541) 733333, Fax: (0541) 737762-742111 Samarinda Kode Pos: 75121</font><br>
            <font size="3"><a href="http://www.kaltim.go.id"><a></font><br>
        </td>
    </tr>
</table><br>
<table>
    <tr>
        
        <td><a> <?php echo date('l, Y-m-d'); echo "<br/>"; ?>

        </a></td>
    </tr>
</table>

<?php 
      $dari = $_POST['dari'];
    $sampai = $_POST['sampai'];
?>

<?php include '../../lib/koneksi.php';
    $sql = mysql_query("SELECT distinct(id_nilai), tabel_loginsiswa.nama, tabel_loginsiswa.nis, tabel_loginsiswa.kelas, tabel_nilai.poin, tabel_nilai.tanggal, tabel_nilai.id_loginsiswa from 
                          tabel_nilai JOIN tabel_loginsiswa 
                          ON tabel_loginsiswa.id_loginsiswa=tabel_nilai.id_loginsiswa where (((tabel_nilai.tanggal) BETWEEN '".$_POST['dari']."' AND '".$_POST['sampai']."'))");
        echo "
        <table border='1' id='table'>
            <thead>
                <tr>
                    <th width='3%' align='center'>No</th>
                    <th width='5%' align='center'>Nis</th>
                    <th width='30%' align='center'>Nama</th>
                     <th width='30%' align='center'>Kelas</th>
                    <th width='5%' align='center'>Poin</th>
                    <th width='5%' align='center'>Tanggal</th>
                </tr>
            </thead>
        ";
    ?>
            <tbody>
                <?php
                $no = 1;
                while ($data = mysql_fetch_array($sql)) {
                    echo "
                    <tr>
                        <td align='center'>$no</td>
                        <td align='center'>$data[nis]</td>
                        <td align='center'>$data[nama]</td>
                        <td align='center'>$data[kelas]</td>
                        <td align='center'>$data[poin]</td>
                        <td align='center'>$data[tanggal]</td>
                    </tr>
                    ";
                $no++; }
                ?>
            </tbody>
        </table><br>

</center>
<style>
    th {
        background: #CCCCCC;
    }
</style>

<?php
    $html = ob_get_contents();
    ob_end_clean();
    $mpdf -> WriteHTML(utf8_encode($html));
    $mpdf -> Output($nama_dokumen.".pdf" ,'I');
    exit;
?>