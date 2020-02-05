<?
$query = "select * from skpd where status='Kosong' order by jab_order";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['3'];
$id[]=$data['0'];

}
$count=count($kategori);
?>