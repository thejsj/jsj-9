<?php 

	class Single extends Content {

		public $template_name = 'single';

		public function __construct( $object = false, $id = false, $key = null ){
			$this->build_single($object, $id, $key); 
		}

		/**
		 * For singles, use the post image to genarate a facebook image tag
		 *
		 * @see https://developers.facebook.com/docs/web/tutorials/scrumptious/open-graph-object/
		 * @return string
		 */
		public function get_facebook_image_tags(){
			if(isset($this->post) && isset($this->post->featured_image)){
				return $this->post->featured_image->generate_image_tags();
			}
		}

		/**
		 * For singles, get featured image facebook share
		 *
		 * @return string
		 */
		public function get_main_image_src(){
			return $this->post->featured_image->facebook_share; 
		}
	}

?>