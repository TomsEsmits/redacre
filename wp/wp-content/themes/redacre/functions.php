<?php
// Language support
load_theme_textdomain( 'redacre', get_template_directory() . '/languages' );

// All of the base theme functions
require_once(get_template_directory() . '/inc/class-redacre-theme-setup.php');
require_once(get_template_directory() . '/inc/class-redacre-helper.php');
require_once(get_template_directory() . '/inc/class-redacre-admin.php');
require_once(get_template_directory() . '/inc/class-redacre-gutenberg.php');

// Theme specific functions
require_once(get_template_directory() . '/inc/class-redacre-custom-hooks.php');

$theme_setup = new Red_Acre_Theme_Setup;

$theme_setup->addNavMenus( array( 
	'primary' => __( 'Primary Menu', 'redacre' )
) );

// Styles and scripts
add_action( 'wp_enqueue_scripts', function() {

	// wow style
	if ( file_exists( get_template_directory() . '/dist/css/app.min.css' ) ) :
		$csstime = filemtime( get_template_directory() . '/dist/css/app.min.css' );
		wp_enqueue_style( 'wow', get_template_directory_uri() . '/dist/vendor/wow/animate.min.css', array(), $csstime );
	endif;

		// App style
		if ( file_exists( get_template_directory() . '/dist/css/app.min.css' ) ) :
			$csstime = filemtime( get_template_directory() . '/dist/css/app.min.css' );
			wp_enqueue_style( 'app', get_template_directory_uri() . '/dist/css/app.min.css', array(), $csstime );
		endif;

	// wow script
	if ( file_exists( get_template_directory() . '/dist/js/app.min.js' ) ) :
		$jstime = filemtime( get_template_directory() . '/dist/js/app.min.js' );
		wp_enqueue_script( 'wow', get_template_directory_uri() . '/dist/vendor/wow/wow.min.js', array(), $jstime, true );
	endif;

	// App script
	if ( file_exists( get_template_directory() . '/dist/js/app.min.js' ) ) :
		$jstime = filemtime( get_template_directory() . '/dist/js/app.min.js' );
		wp_enqueue_script( 'app', get_template_directory_uri() . '/dist/js/app.min.js', array(), $jstime, true );
	endif;
});
