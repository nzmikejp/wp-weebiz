<!DOCTYPE html>
<html lang="en">

<head>
  <!-- meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Bootstrap UI Kit">
  <meta name="keywords" content="ui kit">
  <meta name="author" content="UIdeck">

  <title>This is our Weebiz Template</title>

  <!-- CSS Files -->
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/main.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/animate.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/owl.carousel.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/owl.theme.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/responsive.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/style.css">
  

  <!-- Fonts icons -->
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/font-awesome.min.css">

  <style>
  
    .heading-title {
      color: <?php echo get_theme_mod('heading_color', 'salmon')?>!important;
    }
  
  </style>

  <?php wp_head()?>
</head>

<body>

  <!-- Page Wrapper Start -->
  <div class="wrapper">
    <!-- Nav -->
    <nav class="navbar navbar-toggleable-sm navbar-light bg-black">
      <div class="container">
        <a class="navbar-brand" href="index.html">

          <?php
          
            $default_logo = get_template_directory_uri() . '/img/logo-2.png';
          
          ?>
          
          <img src="<?php echo get_theme_mod('logo', $default_logo)?>" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar4" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbar4">

          <?php wp_nav_menu( array(
            'theme_location' => 'main-menu',
            'container' => 'ul',
            'menu_class' => 'navbar-nav'
          ) ); ?>

          <form class="form-inline hidden-sm-down">
            <div class="top_search_con">
              <input class="form-control mr-sm-2" placeholder="Search Here ..." type="text">
              <span class="top_search_icon"><i class="fa fa-search"></i></span>
            </div>
          </form>
        </div>
      </div>
    </nav>