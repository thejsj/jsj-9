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

		if($key == null)
			$key = 0;

		$this->ID   = ($object ? $object->ID : $id);
		$this->post = ($object ? $object : get_post($this->ID)); 
		$this->post->post_excerpt       = ($this->post->post_excerpt ? $this->post->post_excerpt : wp_trim_excerpt($this->post->post_content));
		$this->post->post_excerpt       = strip_shortcodes(wp_strip_all_tags($this->post->post_excerpt)); // Clean up
		$this->post->post_content       = apply_filters('the_content', $this->post->post_content );
		$this->post->permalink          = get_permalink($this->ID);
		$this->post->post_date_formated = date('l jS \of F Y',strtotime($this->post->post_date));
		$this->post->sub_title          = get_post_meta( $this->ID, 'sub_title', true );
		$this->post->even               = ($key % 2 == 0 ? true : false);
		$this->post->links              = $this->get_post_links($this->ID);

		// Get Featured Content
		$this->post->featured_image     = new Image($this->ID);
		$this->post->featured_content   = $this->get_featured_content();

		return true;
	}

	/**
	 * Load $this template using Mustahce 
	 *
	 * @return void
	 */
	public function render_template(){
		
		global $mustache;

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

	/**
	 * Get all links attached to this post with their respective urls 
	 *
	 * @return array
	 */
	public function get_post_links($id){
		$items = get_field('post_links', $id);
		$links = array();
		if(isset($items) && gettype($items) == 'array' && count($items) > 0){
			foreach($items as $item){
				$this_item = array(); 
				$this_item['title'] = $item['title'];
				if($item['type'] == 'url'){
					$this_item['url'] = $item['url'];
					$this_item['target'] = '_blank';
				}
				if($item['type'] == 'post'){
					$this_item['url'] = get_permalink($item['post']->ID);
					$this_item['target'] = '_self';
				}
				array_push($links, $this_item);
			}
		}
		return $links;
	}
	/**
	 * Get featured content : Get featured image, gallery, or video, depending on value chosen by user in the backend
	 *
	 * @return string
	 */
	public function get_featured_content(){
		global $mustache;
		$return = array();
		$return['type'] = get_post_meta($this->ID, 'type', true);
		if($return['type'] == 'gallery'){
			return $this->get_acf_gallery_shortcode($this->ID);
		}
		else if($return['type'] == 'vimeo'){
			$this->post->vimeo_id = get_post_meta($this->ID, 'vimeo_video_id', true);
			if($this->post->vimeo_id){
				$template = $mustache->loadTemplate('vimeo-video'); 
				return $template->render($this->post);
			}
		}
		else if($return['type'] == 'youtube'){
			$this->post->youtube_id = get_post_meta($this->ID, 'youtube_video_id', true);
			if($this->post->youtube_id){
				$template = $mustache->loadTemplate('youtube-video'); 
				return $template->render($this->post);
			}
		}
		// If none of this works, render the featured image
		$template = $mustache->loadTemplate('featured-image'); 
		return $template->render($this->post);
	}


	/**
	 * Get HTML for a Featured Gallery in ACF
	 *
	 * @return string
	 */
	function get_acf_gallery_shortcode($post_id){
        $image_ids = get_field('gallery', $post_id, false);
        echo json_encode($image_ids);
        if(isset($image_ids) && gettype($image_ids) == 'array' && count($image_ids) > 0){
        	$shortcode = '[gallery ids="' . implode(',', $image_ids) . '"]';
       		return do_shortcode( $shortcode );
        }
	}

	/**
	 * Get an array of images, for an ACF Featured Gallery, provided a post_id
	 *
	 * @return array
	 */
	function get_acf_gallery_images($post_id, $number_of_images = 5){
		$image_ids = get_field('main_gallery', $post_id);
		$return = array();
		if( $image_ids ){
			for($i = 0; $i < count($image_ids); $i++ ) {
				if($i < $number_of_images){
					$image = new stdClass();
					$image->src = $image_ids[$i]['sizes']['large'];
					$image->alt = $image_ids[$i]['alt'];
					array_push($return, $image);
				}
				else {
					break;
				}
			}
		}
	}
}

?>