<?php 

	class PostDisplay extends Taxonomy {

		public $template_name = 'post-display';

		public function __construct($object = false, $id = false){
			// Get Posts
			$this->posts_query = $this->get_posts_in_taxonomy($object->term_id);
			// Build list of posts
			$this->posts = $this->get_posts_from_query($this->posts_query);
		}

	}

?>