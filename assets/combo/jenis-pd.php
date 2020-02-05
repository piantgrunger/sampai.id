<?
$query = "select * from jenis_pd order by id_pd";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['1'];
$id_pd[]=$data['0'];

}
$count=count($kategori);
?>