<?php 

function register_resource() {
    register_nav_menu('main-menu', 'Main Menu' );
    
    //--- Register post types
    $args = array(
        'public'    => true,
        'label'     => 'Services',
        'menu_icon' => 'dashicons-admin-generic'
    );
    register_post_type( 'service', $args );
   
    //--- Register post types
    $args = array(
        'public'    => true,
        'label'     => 'Features',
        'menu_icon' => 'dashicons-format-image'
    );
    register_post_type( 'feature', $args );

    //--- Slider
    $args = array(
        'public'    => true,
        'label'     => 'Slide',
        'menu_icon' => 'dashicons-format-gallery'
    );
    register_post_type( 'slide', $args );
    
    //--- Team Members
    $args = array(
        'public'    => true,
        'label'     => 'Profiles',
        'menu_icon' => 'dashicons-buddicons-buddypress-logo'
    );
    register_post_type( 'profile', $args );
    
    //--- Projects
    $args = array(
        'public'    => true,
        'label'     => 'Projects',
        'menu_icon' => 'dashicons-buddicons-buddypress-logo'
    );
    register_post_type( 'project', $args );

    //--- Custom Taxonomy
    $args = array(
        'label'        => 'Type',
        'public'       => true,
        'hierarchical' => true,
        'show_in_nav_menus' => true,
    );
    register_taxonomy( 'type', 'project', $args );

}
add_action( 'init', 'register_resource' );

function add_class_to_li( $classes, $item, $args ) {
 
    $classes[] = 'nav-item';
    return $classes;
}
add_filter( 'nav_menu_css_class' , 'add_class_to_li' , 10, 4 );

function add_class_to_anchors( $atts ) {
    $atts['class'] = 'nav-link';
 
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'add_class_to_anchors', 10 );

?>