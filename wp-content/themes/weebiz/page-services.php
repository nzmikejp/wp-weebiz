<?php get_header()?>
    <!-- Features -->
    <div class="container index">
       
        <!-- content-index.php -->
        <?php 
            while ( have_posts() ) {
                the_post(); 
                get_template_part('partials/content', 'index');
            } // end while
        ?>

        <div class="row mtb-50">
            <!-- Start Image Service Box 1 -->
            <div class="col-md-4">
            <div class="image-service-box">
                <img src="<?php echo get_template_directory_uri()?>/img/service/img1.jpg" alt="" />
                <div class="service-text">
                <h4><a href="#">Clean Modern Code</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae architecto officiis consequuntur vero error excepturi.</p>
                </div>
            </div>
            </div>
            <!-- End Image Service Box 1 -->

            <!-- Start Image Service Box 2 -->
            <div class="col-md-4">
            <div class="image-service-box">
                <img src="<?php echo get_template_directory_uri()?>/img/service/img2.jpg" alt="" />
                <div class="service-text">
                <h4><a href="#">Great Support</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae architecto officiis consequuntur vero error excepturi.</p>
                </div>
            </div>
            </div>
            <!-- End Image Service Box 2 -->

            <!-- Start Image Service Box 3 -->
            <div class="col-md-4">
            <div class="image-service-box">
                <img src="<?php echo get_template_directory_uri()?>/img/service/img3.jpg" alt="" />
                <div class="service-text">
                <h4><a href="#">Bootstrap 4 UI Kit</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae architecto officiis consequuntur vero error excepturi.</p>
                </div>
            </div>
            </div>
            <!-- End Image Service Box 3 -->
        </div>

    </div>
<?php get_footer()?>
