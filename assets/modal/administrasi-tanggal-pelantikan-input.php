<!-- Modal -->
                <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Tambah Jadwal Pelantikan</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                	<form class="form-horizontal" action="assets/proses/administrasi-in-tgl-pelantikan.php" method='post' enctype='multipart/form-data'>
                             
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Hari Pelantikan</label>
                                        <div class="col-sm-9">
                                        <select name="hari_1"  class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="Senin">Senin</option>
												<option value="Selasa">Selasa</option>
												<option value="Rabu">Rabu</option>
												<option value="Kamis">Kamis</option>
												<option value="Jum'at">Jum'at</option>
												<option value="Sabtu">Sabtu</option>
												<option value="Minggu">Minggu</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal / Jam</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="tgl_1" class="form-control" id="lname" maxlength="10" required placeholder="00-00-0000">
                                        </div>
										<div class="col-sm-3">
                                            <input type="text" name="jam_1" class="form-control" id="lname" maxlength="5" required placeholder="00.00">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tempat </label>
                                        <div class="col-sm-9">
                                            <input type="text" name="tempat_1" required no_telp class="form-control" id="lname"  placeholder="Tempat Pelantikan">
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Hari Gladi </label>
                                        <div class="col-sm-9">
                                        <select name="hari_2" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="Senin">Senin</option>
												<option value="Selasa">Selasa</option>
												<option value="Rabu">Rabu</option>
												<option value="Kamis">Kamis</option>
												<option value="Jum'at">Jum'at</option>
												<option value="Sabtu">Sabtu</option>
												<option value="Minggu">Minggu</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal / Jam</label>
                                        <div class="col-sm-6">
                                            <input type="text" name="tgl_2" class="form-control" id="lname" maxlength="10" required placeholder="00-00-0000">
                                        </div>
										<div class="col-sm-3">
                                            <input type="text" name="jam_2" class="form-control" id="lname" maxlength="5" required placeholder="00.00">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tempat Gladi</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="tempat_2" required class="form-control" id="lname"  placeholder="Tempat Gladi Bersih">
                                        </div>
                                    </div>
									 
                          
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                            </div>  
											</form>
                                        </div>
                                    </div>
                                </div>
                <!-- Modal -->