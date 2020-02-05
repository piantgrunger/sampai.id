<?php
$query = "select * from unit_sppd order by nama";
$hasil = mysqli_query($conn,$query);
$kategori = array();
$id = array();

while ($data0=mysqli_fetch_row($hasil))
{
$kategori[]=$data0["1"];
$id[]=$data0["0"];

}
$count=count($kategori);
$count=count($id);

?>