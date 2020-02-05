<?php

$query = "select * from pejabat where status !='Daftar Tunggu' ";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{

				$gelar_depan[]		= $data['gelar_depan'];
				$gelar_belakang[]	= $data['gelar_belakang'];		
				$kategori[]			= $data['nama_pejabat'];
				$nip[]				= $data['nip'];
				$golongan[]			= $data['pangkat'];
				
				$esselon[]			= $data['esselon'];
				$jabatan[]			= $data['jabatan'];
				$sopd[]				= $data['skpd'];
				$id[]				= $data['id_pejabat'];
				$status[]			= $data['id_pejabat'];
				
		




}
$count=count($kategori);
?>