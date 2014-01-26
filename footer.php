	
	<!-- Footer -->
	<footer class="main-footer">
		<div class="row">
			<nav class="large-6 large-push-6 right columns main-nav"><!-- Because the WordPress walker apprently really sucks... -->
			<?php wp_nav_menu( array( 
				'menu_class'     => 'inline-list',
				'theme_location' => 'primary',
				'items_wrap'     => '<ul id="%1$s" class="home-link %2$s">%3$s</ul>',
			) ); ?>
			</nav>
			<div class="large-6 large-pull-6 columns">
				<span class="copyright">&copy; Copyright <?php echo copyright(2010); ?>... I mean, cause it really matters and stuff...</span>
			</div>
		</div>
	</footer>
	<?php wp_footer(); ?> 
</body>
</html>