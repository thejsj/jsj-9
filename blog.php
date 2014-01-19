<?php $class = "taxonomy-page blog"; ?>
<?php require_once('header.php'); ?>
	<!-- Projects -->
	<div class="portfolio-container">
		<div class="row">
			<div class="large-10 large-offset-1 columns">
				<h2 class="taxonomy-title">Blog</h2>
				<p><a href="#">Interactive</a>, <a href="#">Plugins</a>, <a href="#">Code</a>, <a href="#">Print</a>, <a href="#">Web</a></p>
			</div>
			<?php for($i = 0; $i < 10; $i++): ?>
			<?php if($i % 2 == 0): ?>
				<div class="large-9 large-offset-1 columns">
					<div class="row single-container">
						<div class="large-5 columns img-container">
							<a href="#">
								<img src="images/coj4.jpg" alt="Image">
							</a>
						</div>
						<div class="large-7 columns img-container">
							<h2>Click On Jorge</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tincidunt tincidunt felis a mattis. Cras viverra eros sagittis est pharetra pellentesque. Donec imperdiet pretium accumsan.</p>
						</div>
					</div>
				</div>
			<?php else: ?>
				<div class="large-9 large-offset-1 columns">
					<div class="row single-container">
						<div class="large-7 columns img-container">
							<h2>Click On Jorge</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tincidunt tincidunt felis a mattis. Cras viverra eros sagittis est pharetra pellentesque. Donec imperdiet pretium accumsan.</p>
						</div>
						<div class="large-5 columns img-container">
							<a href="#">
								<img src="images/coj4.jpg" alt="Image">
							</a>
						</div>
					</div>
				</div>
			<?php endif; ?>
			<?php endfor; ?>
			<div class="row pagination">
				<div class="large-7 large-offset-2 columns">
					<span class="left">
						<a href="#">&#8592;&nbsp;&nbsp;Previous</a>&nbsp;/</span>
					<span class="right">/&nbsp;<a href="#">Next&nbsp;&nbsp;&#8594;</a></span>
				</div>
			</div>
		</div>
	</div>
<?php require_once('footer.php'); ?>