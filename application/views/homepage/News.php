

	<!-- Login Form -->

	<div class="login-form">
		<div class="login-top">
			<span class="close">&times;</span>
		</div>
		<div class="login">
			<h3 class="text-center">
				Bavel Log In
			</h3>
			<div class="form-input">
				<label>Email</label> <br>
				<input type="email" name="" class="form-control">
			</div>
			<div class="form-input">
				<label>Password</label> <br>
				<input type="password" name="" class="form-control">
			</div>
			<div class="form-input">
				<button type="submit" class="btn btn-login">Log In</button>
			</div>
			<a href="" class="text-center">Don't have account ? Register now</a>
		</div>
	</div>

	<div class="login-overlay"></div>

	<section class="section-header-single">
		<img src="<?=base_url()?>assets/homepage/img/dayak.jpg">
		<div class="overlay">
			<div class="header-title">
				<h3>Suku</h3>
				<span class="ion-record"></span>&nbsp;
				<span class="ion-record"></span>&nbsp;
				<span class="ion-record"></span>
			</div>
	</section>
	</section>

	<ul class="breadcrumb">
		<li><a href="<?=base_url()?>">Home</a></li>
		<li>Suku</li>
	</ul>

	<section class="section section-archive">
		<div class="container">
			<div class="row">
				<div class="content">
					<?php  
						if (count($news) > 0) {
							foreach ($news as $n) { ?>
								<div class="col">
									<div class="content-img">
										<img src="<?=base_url()?>assets/foto/artikel/<?=$n['thumbnail']?>">
									</div>
									<div class="content-desc">
										<div class="content-desc-title">
											<a href="<?=base_url()?>news/detail/<?=$n['slug_blog']?>">
												<h3> <?=$n['judul']?></h3>
											</a>
										</div>
										<div class="content-desc-text" align="justify">
											<ul class="breadcrumb-post">
												<li><i class="ion-calendar"></i> <?=date('d F Y', strtotime($n['tgl_post']))?></li>
												<li><i class="ion-person"></i> <?=$n['nama']?></li>
											</ul>
											<p>
												<?=substr($n['isi'],0,300);?>
											</p>
											<a href="<?=base_url()?>news/detail/<?=$n['slug_blog']?>" class="btn btn-md btn-orange" style="margin-top: 10px;">Read More</a>
										</div>
									</div>
								</div>
							<?php }
						} else { ?>
							<center><h3>Pencarian Tidak Ditemukan</h3></center>
						<?php }
					?>			

					<?php echo $halaman; ?>	
					
				</div>				
			</div>
		</div>
	</section><br><br><br>
