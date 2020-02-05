<?
include('koneksi.php');
$id_sppd 					= $_POST['id_sppd'];
$klasifikasi				= $_POST['klasifikasi'];
$rincian					= $_POST['rincian'];
$qty						= $_POST['qty'];
$satuan						= $_POST['satuan'];
$harga						= $_POST['harga'];

$jumlah 					= $qty * $harga;






$t_now					= date("d");
$bln_lantik				= date("m");
$y_now					= date("Y");


					if ($bln_lantik =='01')
					{
					$bulan_lantik	='Januari';
					}
					elseif ($bln_lantik =='02')
					{
					$bulan_lantik	='Februari';
					}
					elseif ($bln_lantik =='03')
					{
					$bulan_lantik	='Maret';
					}
					elseif ($bln_lantik =='04')
					{
					$bulan_lantik	='April';
					}
					elseif ($bln_lantik =='05')
					{
					$bulan_lantik	='Mei';
					}
					elseif ($bln_lantik =='06')
					{
					$bulan_lantik	='Juni';
					}
					elseif ($bln_lantik =='07')
					{
					$bulan_lantik	='Juli';
					}
					elseif ($bln_lantik =='08')
					{
					$bulan_lantik	='Agustus';
					}
					elseif ($bln_lantik =='09')
					{
					$bulan_lantik	='September';
					}
					elseif ($bln_lantik =='10')
					{
					$bulan_lantik	='Oktober';
					}
					elseif ($bln_lantik =='11')
					{
					$bulan_lantik	='November';
					}
					else
					{
					$bulan_lantik	='Desember';
					}										
																
					$tgl_ajuan = $t_now;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $bulan_lantik;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $y_now;






$sql1					= "insert rampung values('','$id_sppd','$klasifikasi','$rincian','$qty','$harga','$satuan','$tgl_ajuan','$jumlah','Riil' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../Riil-SPPD.php?id=$id_sppd");
//echo "Sukses";
}else
{
header("location:../../Data-SPPD.php?pesan=2&isi=Gagal Menambahkan Jabatan Baru Dengan nama $a1 karena ".mysql_error());
//echo $sql1;
}

?>



