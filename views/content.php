<?php 

class Content {

	/**
	 * Get basic info about object
	 * Try to get it off the queried object, if not, use ie with get_post (they return exactly the same results)
	 * 
	 * @return void
	 */
	public function build_single($object = false, $id = false, $key = null){
		if(!$object && !$id)
			return false;

		$this->ID   = ($object ? $object->ID : $id);
		$this->post = ($object ? $object : get_post($this->ID)); 
		$this->post->post_excerpt       = ($this->post->post_excerpt ? $this->post->post_excerpt : wp_trim_excerpt($this->post->post_content));
		$this->post->post_excerpt       = strip_shortcodes(wp_strip_all_tags($this->post->post_excerpt)); // Clean up
		$this->post->post_content       = apply_filters('the_content', $this->post->post_content );
		$this->post->permalink          = get_permalink($this->ID);
		$this->post->post_date_formated = date('l jS \of F Y',strtotime($this->post->post_date));
		$this->post->featured_image     = new Image($this->ID);
		$this->post->sub_title          = get_post_meta( $this->ID, 'sub_title', true );
		if($key != null){
			$this->post->even           = ($key % 2 == 0 ? true : false);
		}
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
			'loader' => new Mustache_Loader_FilesystemLoader(dirname(dirname(__FILE__)).'/templates'),
			'partials_loader' => new Mustache_Loader_FilesystemLoader(dirname(dirname(__FILE__)).'/templates/partials'),
		));

		// Render Template
		if($this->template_name){
			$this->template = $mustache->loadTemplate($this->template_name); 
			echo $this->template->render($this);
		}
	}

	/**
	 * Turn the result of WP_Query into something to be looped over in our template
	 *
	 * @return array
	 */
	public function get_posts_from_query($query){
		$posts = array(); 
		foreach($query as $key => $post){
			$post_object = new Single($post, false, $key); 
			array_push($posts, $post_object);
		}
		return $posts; 
	}
	
	/**
	 * Given a content post type, get all child taxonomies
	 *
	 * @see http://codex.wordpress.org/Function_Reference/get_terms
	 * @return array
	 */
	public function get_child_taxonomies($post_type){
		$taxonomies_query = get_object_taxonomies($post_type, 'objects');
		$terms = array(); 
		$taxonomies = array(); 
		foreach($taxonomies_query as $taxonomy){
			// echo json_encode($taxonomy);
			array_push($taxonomies, $taxonomy->name);
		}
		$terms = get_terms( $taxonomies );
		foreach($terms as $key => $term){
			$terms[$key]->first = ($key == 0 ? true : false );
			$terms[$key]->permalink = get_term_link( $term );
		}
		$return = array(); // Mustache is giving me shit about this object, so let's just fix it the ugly way
		foreach($terms as $term){
			array_push($return, $term);
		}
		return $return;
	}
}

?>