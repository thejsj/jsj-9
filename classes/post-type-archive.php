<?php 

	class PieceDisplay extends Taxonomy {

		public $template_name = 'work';

		public function __construct($object = false, $id = false){

			$this->build_object($object);
			$this->posts_query = $this->get_posts_in_taxonomy(false, $object->query_var, false);

			// Build list of posts
			$this->posts = array(); 
			foreach($this->posts_query as $key => $post){
				$post_object = new Page($post); 
				$post_object->even = ($key % 2 == 0 ? true : false);
				array_push($this->posts, $post_object);
			}
		}

	}

?>