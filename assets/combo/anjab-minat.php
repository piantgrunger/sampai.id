<?php
$query = "select * from tb_minat order by id_min ";
$hasil = mysqli_query($conn,$query);
$jabatan = array();
while ($data=mysqli_fetch_array($hasil))
{
$nama_barang[]=$data['1'];
$id_barang[]=$data['0'];

}
$count=count($nama_barang);
?>