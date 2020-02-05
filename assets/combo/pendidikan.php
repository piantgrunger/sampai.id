<?
$query = "select * from pendidikan order by pendidikan";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['1'];
//$id[]=$data['0'];

}
$count=count($kategori);
?>