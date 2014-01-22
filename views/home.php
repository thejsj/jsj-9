<?php 

	class Home extends Content {

		public $template_name = "home";

		public function __construct(){
			$this->featured_work = $this->get_featured_work();
			$this->featured_wordpress_plugins = $this->get_featured_wordpress_plugins();
			$this->featured_experiments = $this->get_featured_experiments();
		}

		/**
		 * Get post objets selected in the Options Page for Featured Work (3)
		 *
		 * @return array
		 */
		public function get_featured_work(){
			$posts = array(); 
			for($i = 1; $i < 4; $i++){
				$post_object = get_field('featured_project_' . $i, 'option');
				array_push($posts, new Single($post_object, false, $i));
			}
			return $posts;
		}

		/**
		 * Get post objets selected in the Options Page for Wordpress Plugins
		 *
		 * @return array
		 */
		public function get_featured_wordpress_plugins(){
			return $this->get_options_posts('wordpress_plugin_pages');
		}

		/**
		 * Get post objets selected in the Options Page for Experimentes
		 *
		 * @return array
		 */
		public function get_featured_experiments(){
			return $this->get_options_posts('featured_experiments');
		}

		/**
		 * Get post object from a multiple select field in the options page
		 * 
		 * @return array
		 */
		public function get_options_posts($key){
			$post_objects = get_field($key, 'option');
			$posts = array();
			foreach($post_objects as $key => $post){
				array_push($posts, new Single($post, false, $key));
			}
			return $posts;
		}

	}	

?>