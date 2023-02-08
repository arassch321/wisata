	<section class="section-header-single">
		<img src="<?=base_url()?>assets/foto/artikel/<?=$news['thumbnail']?>">
		<div class="overlay">
			<div class="header-title">
				<h3><?=$news['judul']?></h3>
				<span class="ion-record"></span>&nbsp;
				<span class="ion-record"></span>&nbsp;
				<span class="ion-record"></span>
			</div>
	</section>

	<ul class="breadcrumb">
		<li><a href="<?=base_url()?>">Home</a></li>
		<li><a href="<?=base_url()?>news">Suku</a></li>
		<li>Detail Suku</li>
	</ul>

	<section class="section section-archive">
		<div class="container" >
			<div class="row">
				<div class="content">
					<div class="content-single">
						<div class="content-single-title">
							<h3><?=$news['judul']?></h3>
							<img src="<?=base_url()?>assets/foto/artikel/<?=$news['thumbnail']?>" class="image">
						</div>
						<div class="content-single-body" align="justify">
							<p><?=$news['isi']?></p>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><br><br><br>

	<script type="text/javascript" src="<?=base_url()?>assets/homepage/js/jquery.js"></script>
	<!-- AddToAny BEGIN -->
	<script>
		var a2a_config = a2a_config || {};
		a2a_config.locale = "id";
	</script>
	<script type='text/javascript' src="https://platform-api.sharethis.com/js/sharethis.js#property=5d2f3dc34bd0b50012e2cfa2&product='inline-share-buttons'" async='async'></script>
<!-- AddToAny END -->
