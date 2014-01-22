<?php 

	class Single extends Content {

		public $template_name = 'single';

		public function __construct( $object = false, $id = false, $key = null ){
			$this->build_single($object, $id, $key); 
		}
	}

?>