<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$utama						= $_POST['utama'];
$madya							= $_POST['madya'];
$pertama						= $_POST['pertama'];
$administrator							= $_POST['administrator'];
$pengawas						= $_POST['pengawas'];
$pelaksana							= $_POST['pelaksana'];
$jft						= $_POST['jft'];


$sql1					= "insert tb_unitkerja values(0,'$id_jabatan','$utama' ,'$madya','$pertama' ,'$administrator','$pengawas' ,'$pelaksana','$jft')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-unit-kerja.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-unit-kerja.php?id=$id_jabatan");
//echo $sql1;
}

?>



