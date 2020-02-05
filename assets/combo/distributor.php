<?
$query = "select * from distributor  order by distributor";
$hasil = mysqli_query($conn,$query);
$jabatan = array();
while ($data=mysqli_fetch_array($hasil))
{
$distributor[]=$data['1'];
$id_distributor[]=$data['0'];

}
$count=count($distributor);
?>