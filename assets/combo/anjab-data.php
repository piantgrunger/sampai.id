<?php
$query = "select * from tb_data order by id_data ";
$hasil = mysqli_query($conn,$query);
$jabatan = array();
while ($data=mysqli_fetch_array($hasil))
{
$nama_[]=$data['1'];

}
$count=count($nama_);
?>