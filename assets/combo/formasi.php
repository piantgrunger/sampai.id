<?php
$query = "select * from formasi order by id_formasi";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$formasi[]=$data['2'];
$id_formasi[]=$data['0'];

}
$count=count($formasi);
?>