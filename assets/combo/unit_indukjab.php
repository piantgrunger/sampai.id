<?php
$query = "select id_jabatan,jabatan from jabatan where id_skpd='$id_skpd'  order by parent_id, jab_order ";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_row($hasil))
{
$kategori[]		= $data['1'];
$id_jabatan[]	= $data['0'];

}
$count=count($kategori);
?>