<?php
 // skrip koneksi database

 $ip      = $_SERVER['REMOTE_ADDR']; // Mendapatkan IP komputer user
 $tanggal = date("Ymd"); // Mendapatkan tanggal sekarang
 $waktu   = time(); //
  
 // Mencek berdasarkan IPnya, apakah user sudah pernah mengakses hari ini
 $s = mysqli_query("SELECT * FROM tstatistika WHERE ip='$ip' AND tanggal='$tanggal'");
 
 // Kalau belum ada, simpan data user tersebut ke database
 if(mysqli_num_rows($s) == 0){
     mysqli_query("INSERT INTO tbtatistik(ip, tanggal, hits, online) VALUES('$ip','$tanggal','1','$waktu')");
 }
 // Jika sudah ada, update
 else{
     mysqli_query("UPDATE tbtatistik SET hits=hits+1, online='$waktu' WHERE ip='$ip' AND tanggal='$tanggal'");
 }
 
 $pengunjung       = mysqli_num_rows(mysqli_query("SELECT * FROM tbtatistik WHERE tanggal='$tanggal' GROUP BY ip")); // Hitung jumlah pengunjung
 $totalpengunjung  = mysqli_query("SELECT COUNT(hits) FROM tbtatistik"), 0); // hitung total pengunjung
 $bataswaktu       = time() - 300;
 $pengunjungonline = mysqli_num_rows(mysqli_query("SELECT * FROM tbtatistik WHERE online > '$bataswaktu'")); // hitung pengunjung online
 ?> 
 
 Hari ini : <?php echo $pengunjung; ?> 
 Total : <?php echo $totalpengunjung; ?>
 Pengunjung Online : <?php echo $pengunjungonline; ?>