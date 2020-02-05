<?
//$query = "select id_skpd,nama_skpd,key_skpd from skpd  where id_skpd='60' order by nama_skpd";
$query = "select id_skpd,nama_skpd,key_skpd from skpd order by nama_skpd";

$hasil = mysqli_query($conn,$query);
$nama_skpd = array();
while ($data=mysqli_fetch_row($hasil))
{
$nama_skpd[]=$data['1'];
$id_skpd[]=$data['0'];
$key[]=$data['2'];


}
$count=count($nama_skpd);
?>