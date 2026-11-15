<div class="content_bottom">
     <div class="col-md-12 span_3">
          <div class="bs-example1" data-example-id="contextual-table">
<div class="card-body">
	<form class="form-horizontal" role="form" enctype="multipart/form-data" action="nilai/nilai_cetakproses.php" method="POST">
			<div class="form-group">
				<label for="placeholder13" class="col-sm-2 control-label">Dari Tanggal</label>
				<div class="form-group input-group">
					<div class="input-group date">
						<div class="input-group-content">
							<input name="dari" type="date" class="form-control" id="autocomplete1" data-source="suratmk/html/forms/data/countries.json.html">
							<p class="help-block">Tahun / Bulan / Hari</p>
						</div>
						<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="placeholder13" class="col-sm-2 control-label">Sampai Tanggal</label>
				<div class="form-group input-group">
					<div class="input-group date">
						<div class="input-group-content">
							<input name="sampai" type="date" class="form-control" id="autocomplete1" data-source="html/forms/data/countries.json.html">
							<p class="help-block">Tahun / Bulan / Hari</p>
						</div>
						<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					</div>
				</div>
			</div>
				<button type="submit" name="tombol" value="tampil" class="btn ink-reaction btn-primary">Cetak</button>
								<button type="button" namae="tombol" value="tampil" class="btn ink-reaction btn-primary" onclick="self.history.back()">Kembali</button></p>

			</div><br>
	</form>
</div>
</div>
</div>
</div>
</html>