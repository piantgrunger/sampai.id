<?
$query = "select * from jabatan where status='Kosong' order by parent_id,jab_order ASC";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['3'];
$id[]=$data['0'];
$sopd[]=$data['14'];


}
$count=count($kategori);
?>