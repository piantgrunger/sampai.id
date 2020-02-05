<?
$query = "select id_jenis_skpd,jenis_skpd from jenis_skpd  order by id_jenis_skpd";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_row($hasil))
{
$kategori[]=$data['1'];
$id_jenis[]=$data['0'];

}
$count=count($kategori);
?>