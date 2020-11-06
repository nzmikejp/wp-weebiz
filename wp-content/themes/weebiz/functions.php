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


//--- Customisation API ---//
function mytheme_customize_register( $wp_customize ) {
    //All our sections, settings, and controls will be added here

    $wp_customize->add_section( 'settings' , array(
        'title'      => 'Settings',
        'priority'   => 30,
    ) );

    //heading color setting
    $wp_customize->add_setting( 'heading_color' , array(
        'default'   => '#000000',
        'transport' => 'refresh',
    ) );

    $wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'link_color', array(
        'label'      => 'Heading Color',
        'section'    => 'settings', //section id for section
        'settings'   => 'heading_color', //setting id for setting
    ) ) );

    //logo setting
    $wp_customize->add_setting( 'logo' , array(
        'default'   => '',
        'transport' => 'refresh',
    ) );

    //logo control
    $wp_customize->add_control(
        new WP_Customize_Image_Control(
            $wp_customize,
            'logo',
            array(
                'label'      => 'Upload a logo',
                'section'    => 'settings',
                'settings'   => 'logo',
                // 'context'    => 'your_setting_context'
            )
        )
    );
}
add_action( 'customize_register', 'mytheme_customize_register' );

?>