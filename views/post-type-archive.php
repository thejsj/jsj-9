<?php 

	class PieceDisplay extends Taxonomy {

		public $template_name = 'work';

		public function __construct($object = false, $id = false){
			$this->object = $object; 
			// Get Child Taxonomies
			$this->child_taxonomies = $this->get_child_taxonomies($this->object->query_var);
			// Get Ojbect From Database
			$this->posts_query = $this->get_posts_in_taxonomy(false, $object->query_var, false);
			// Build list of posts
			$this->posts = $this->get_posts_from_query($this->posts_query);
		}
	}

?>