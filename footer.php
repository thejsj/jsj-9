	<!-- Footer -->
	<footer class="main-footer">
		<div class="row">
			<div class="large-6 columns padding-top">
				<span class="copyright">&copy; Copyright <?php echo copyright(2010); ?>... I mean, cause it really matters and stuff...</span>
			</div>
			<nav class="large-6 columns main-nav"><!-- Because the WordPress walker apprently really sucks... -->
			<?php wp_nav_menu( array( 
				'menu_class' => 'button-group right',
				'theme_location' => 'primary',
				'items_wrap'      => '<ul id="%1$s" class="home-link %2$s">%3$s</ul>',
			) ); ?>
			</nav>
		</div>
	</footer>

	<?php wp_footer(); ?> 
</body>
</html>