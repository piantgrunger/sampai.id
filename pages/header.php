<?php
 $id_user = $id_admin;
 
 	$sql_admin 			= "select * from users where id='$id_user' ";
	$query_admin 		= mysqli_query ($conn, $sql_admin);
	$data_admin 		= mysqli_fetch_array($query_admin);
	
	$kategori_admin		= $data_admin['kategori'];
	
	if ($kategori_admin =='Admin Sub Bidang')
		{
					$jml_pesan_1 				= "SELECT * FROM spk where id_user='$id_admin' and status ='0' ";
					$query_pesan_1				= mysqli_query($conn, $jml_pesan_1);
					$total_jml_pesan_1			= mysqli_num_rows($query_pesan_1);
					
					$jml_pesan_2 				= "SELECT * FROM spk where id_user='$id_admin' and status ='1' and nomor_ba='' ";
					$query_pesan_2				= mysqli_query($conn, $jml_pesan_2);
					$total_jml_pesan_2			= mysqli_num_rows($query_pesan_2);
					
					$jml_total_pesan			= $total_jml_pesan_1 + $total_jml_pesan_2;
					
					
		
		}
	else if ($kategori_admin =='Admin Persediaan')
	{
					$jml_pesan_1 				= "SELECT * FROM spk where status ='0' ";
					$query_pesan_1				= mysqli_query($conn, $jml_pesan_1);
					$total_jml_pesan_1			= mysqli_num_rows($query_pesan_1);
					
					$jml_pesan_2 				= "SELECT * FROM spk where status ='1' and nomor_ba='' ";
					$query_pesan_2				= mysqli_query($conn, $jml_pesan_2);
					$total_jml_pesan_2			= mysqli_num_rows($query_pesan_2);
					
					$jml_total_pesan			= $total_jml_pesan_1 + $total_jml_pesan_2;
	}
 ?>


<header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="html/ltr/index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="assets/images/logo-icon.png" alt="homepage" class="light-logo" />                        </b>
                        <!--End Logo icon -->
                         <!-- Logo text -->
                        <span class="logo-text">
                             <!-- dark Logo text -->
                             <img src="assets/images/logo-text.png" alt="homepage" class="light-logo" />                        </span>
                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                            
                        <!-- </b> -->
                        <!--End Logo icon -->
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?php include "title-2.php";?>
                        </li>
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search position-absolute">
                                <input type="text" class="form-control" placeholder="Search &amp; enter"> <a class="srh-btn"><i class="ti-close"></i></a>
                            </form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->
                       
                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                           <?php
                            if ($jml_total_pesan== 0)
                            {
                            ?>
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-bell-off"></i> 
                            <?php
                            }
                            else
                            {
                            ?>
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-bell-ring"></i> 
                            <span class="badge badge-pill badge-warning"><?php echo $jml_total_pesan;?></span>                            

                            <?php
                            }
                            ?>

                            </a>      
                            <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="">
                                        
										<?php
										if ($total_jml_pesan_1 == 0)
										{
										
										}
										else
										{
										?>
										 <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-success btn-circle"><i class="ti-settings"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Belum Selesai Belanja</h5> 
                                                        <span class="mail-desc">Terdapat <?php echo $total_jml_pesan_1; ?> SPO/SPK Anda yang Belum Selesai Belanja</span>                                                    </div>
                                                </div>
                                            </a>
										<?php
										}
										
										?>
										
										<?php
										if ($total_jml_pesan_2 == 0)
										{
										
										}
										else
										{
										?>
										 <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-primary btn-circle"><i class="ti-user"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Belum Berita Acara</h5> 
                                                        <span class="mail-desc">Terdapat <?php echo $total_jml_pesan_2; ?> Belum di Approve oleh Admin Persediaan</span>                                                    </div>
                                                </div>
                                            </a>
										<?php
										}
										
										?>    
                                      </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/include/<?php echo $lokasi_pict; ?>" alt="user" class="rounded-circle" width="31" height="31"></a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> <?php echo $nama_1; ?></a>
                              
                                <a class="dropdown-item" href="assets/include/logout.php"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                <div class="dropdown-divider"></div>
                                <div class="p-l-30 p-10"><a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded">View Profile</a></div>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>