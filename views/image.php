<?php

    class Image {

    function __construct($post_id, $attachment_id = false, $html_size = 'slideshow'){

        if($post_id !== false){
                $this->post_id = $post_id; 
                $this->attachment_id = get_post_thumbnail_id($this->post_id);
        }
        else {
                $this->attachment_id = $attachment_id; 
        }       

        // Get all image sizes
        $this->html        = wp_get_attachment_image( $this->attachment_id, $html_size );
        $this->full        = $this->get_background_url_by_size($this->attachment_id, 'full');
        $this->large       = $this->get_background_url_by_size($this->attachment_id, 'large');
        $this->medium      = $this->get_background_url_by_size($this->attachment_id, 'medium');
        $this->slideshow   = $this->get_background_url_by_size($this->attachment_id, 'slideshow');
        $this->slideshow2x = $this->get_background_url_by_size($this->attachment_id, 'slideshow@2x');
        $this->home_page   = $this->get_background_url_by_size($this->attachment_id, 'home-page');
        $this->home_page2x = $this->get_background_url_by_size($this->attachment_id, 'home-page@2x');
        $this->side        = $this->get_background_url_by_size($this->attachment_id, 'side');
        $this->side2x      = $this->get_background_url_by_size($this->attachment_id, 'side@2x');
    }

    public function get_background_url_by_size($attachment_id, $size){
        $url = wp_get_attachment_image_src( 
            $attachment_id, 
            $size
        );
        return $url[0];
    }   

    public function display_image_background_and_data_attributes($size){
        ?>
        style="background-image: url(<?php echo $this->$size; ?>)"
        data-image-size-event-card="<?php echo $this->event_card; ?>"
        data-image-size-event-card@2x="<?php echo $this->event_card2x; ?>"
        data-image-size-event-default="<?php echo $this->event_default; ?>"
        data-image-size-event-default@2x="<?php echo $this->event_default2x; ?>"
        data-image-size-event-featured="<?php echo $this->event_featured; ?>"
        data-image-size-event-featured@2x="<?php echo $this->event_featured2x; ?>"
        data-image-size-staff-photo="<?php echo $this->event_featured2x; ?>"
        data-image-size-staff-photod@2x="<?php echo $this->event_featured2x; ?>"
        data-image-size-full="<?php echo $this->full; ?>"
        <?php
        }
    }

?>