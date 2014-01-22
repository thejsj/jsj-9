<?php 
$json_mode = false;

if(!$json_mode)
    get_header(); 

?>
<?php

    $queried_object = get_queried_object();

    if(is_404()){
        $this_object = new FourOFour();
    }
    elseif(is_front_page() || is_home()){
        $this_object = new Home($queried_object);
    }
    elseif(is_singular()){
         if(is_single() || is_page()){
            $this_object = new Single($queried_object);
        }
    }
    elseif(is_post_type_archive()){
        $this_object = new PieceDisplay($queried_object);
    }
    elseif(is_category()){
        $this_object = new PostDisplay($queried_object);
    }
    else {
        $this_object = new FourOFour();
    }

    // Render Template at the end of the query
    $this_object->render_template();

    // if(is_archive()){
    //     $queried_object->post_content .= " is_archive -";
    // }
    // if(is_category()){
    //     $queried_object->post_content .= " is_category -";
    // }
    // if(is_post_type_archive()){
    //     $queried_object->post_content .= " is_post_type_archive -";
    // }
    // if(is_search()){
    //     $queried_object->post_content .= " is_search -";
    // }
    // if(is_404()){
    //     $queried_object->post_content .= " is_404 -";
    // }
    // if(is_attachment()){
    //     $queried_object->post_content .= " is_attachment -";
    // }
    // if(is_main_query()){
    //     $queried_object->post_content .= " is_main_query -";
    // }
    // if(is_paged()){
    //     $queried_object->post_content .= " is_paged -";
    // }
    
   

?>
<?php 

if(!$json_mode)
    get_footer(); 
?>