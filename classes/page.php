<?php 

	class Page extends Content {

		public $template_name = 'single';

		public function __construct( $object = false, $id = false ){
			$this->build_object($object, $id); 
		}
	}

?>