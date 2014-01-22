<?php 
	
	class Taxonomy extends Content {

		/**
		 * Populate variables based on queried object
		 * 
		 * @return void
		 */
		public function build_object($object = false, $id = false, $taxonomy = false){
			if(!$object && !$id)
				return false;
			if($object && property_exists($object, 'term_id')){
				$this->term_id   = ($object ? $object->term_id : $id);
				$this->term = ($object ? $object : get_term($this->ID, $taxonomy)); 
			}			
			return true;
		}

		/**
		 * Get all posts/pieces/experiments in a taxonomy
		 * 
		 * @return array
		 */
		public function get_posts_in_taxonomy($term_id = false, $post_type = 'post', $taxonomy = false){
			$args = array();
			if($term_id){
				$args['cat'] = $term_id;
			}
			if($post_type){
				$args['post_type'] = $post_type;
			}
			if($taxonomy){
				$args['taxonomy'] = $taxonomy;
			}			
			$query = new WP_Query( $args );
			return $query->posts;
		}
	}
?>