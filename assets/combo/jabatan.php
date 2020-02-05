<?
$query = "select * from jabatan order by id_esselon";
$hasil = mysqli_query($conn,$query);
$jabatan = array();
while ($data=mysqli_fetch_array($hasil))
{
$jabatan[]=$data['1'];
$id_jabatan[]=$data['0'];

}
$count=count($jabatan);
?>