<?php 

class Content {

	/**
	 * Get basic info about object
	 * Try to get it off the queried object, if not, use ie with get_post (they return exactly the same results)
	 * 
	 * @return void
	 */
	public function build_object($object = false, $id = false){
		if(!$object && !$id)
				return false;

		$this->ID   = ($object ? $object->ID : $id);
		$this->post = ($object ? $object : get_post($this->ID)); 
		$this->post->post_excerpt       = (get_the_excerpt() ? get_the_excerpt() : wp_trim_excerpt($this->post->post_content));
		$this->post->post_content       = apply_filters('the_content', $this->post->post_content );
		$this->post->permalink          = get_permalink($this->ID);
		$this->post->post_date_formated = date('l jS \of F Y',strtotime($this->post->post_date));
		$this->post->featured_image     = new Image($this->ID);
		return true;
	}

	/**
	 * Load $this template using Mustahce 
	 *
	 * @return void
	 */
	public function render_template(){
		// Load Mustache PHP
		/*
		 * Documentation:
		 *
		 * https://github.com/bobthecow/mustache.php/wiki
		 * https://github.com/bobthecow/mustache.php/wiki/Mustache-Tags
		 */
		require dirname(dirname(__FILE__)) . '/Mustache/Autoloader.php';

		Mustache_Autoloader::register();

		$mustache = new Mustache_Engine(array(
			'cache' => dirname(dirname(__FILE__)).'/mustache_cache',
			'cache_file_mode' => 0666, // Please, configure your umask instead of doing this :)
			'cache_lambda_templates' => true,
			'loader' => new Mustache_Loader_FilesystemLoader(dirname(dirname(__FILE__)).'/views'),
			'partials_loader' => new Mustache_Loader_FilesystemLoader(dirname(dirname(__FILE__)).'/views/partials'),
		));

		// Render Template
		if($this->template_name){
			$this->template = $mustache->loadTemplate($this->template_name); 
			echo $this->template->render($this);
		}
	}
	
}

?>