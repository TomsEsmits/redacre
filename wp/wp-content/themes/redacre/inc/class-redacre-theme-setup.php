<?php

/**
 * Sets up the base functionality for our base theme.
 */
class Red_Acre_Theme_Setup {
	public function __construct() {
		// Theme support
		$this->add_theme_support( 'post-thumbnails' );
		$this->add_theme_support( 'title-tag' );
		$this->add_theme_support( 'automatic-feed-links' );
		$this->remove_theme_support( 'core-block-patterns' );

		// Remove
		remove_action( 'wp_head', 'wp_generator' );
		remove_action( 'wp_head', 'wlwmanifest_link' );
		remove_action( 'wp_head', 'wp_shortlink_wp_head' );
		remove_action( 'wp_head', 'rsd_link' );
		remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head' );
		remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
		remove_action( 'wp_print_styles', 'print_emoji_styles' );
		remove_action( 'wp_body_open', 'wp_global_styles_render_svg_filters' );

		// Remove default image sizes
		add_filter( 'intermediate_image_sizes_advanced', [$this, 'remove_default_images'], 10, 3 );

		// Theme CSS to Gutenberg
		add_action( 'after_setup_theme', [$this, 'add_editor_styles'] );

		// Block styles
		add_action( 'wp_enqueue_scripts', [$this, 'remove_block_styles'], 99999 );

		// Remove Posts from admin
		add_action('admin_menu', [$this, 'post_remove_admin'] );

		// Theme Options
		$this->options_page();

		// Disable ACF shortcodes
		add_action( 'acf/init', [$this, 'set_acf_settings'] );

		// Remove empty field group message for non admin
		add_filter( 'acf/blocks/no_fields_assigned_message', [$this, 'remove_empty_field_group_message'], 10, 2 );

		 // Disable XML-RPC calls
		add_filter( 'xmlrpc_enabled', '__return_false' );

		// Non-specific login error messages
		add_filter( 'login_errors', [$this, 'login_error_message'] );

		// Security headers
		add_filter('wp_headers', [$this, 'security_headers'] );

		// Add svg mime type
		add_filter( 'upload_mimes', [$this, 'wpcontent_svg_mime_type'] );

		// Allow svg upload
		add_filter('wp_handle_upload_prefilter', [$this, 'upload_svg'], 10, 1);
	}

	/**
	 * Registers theme support for a given feature.
	 */
	public function add_theme_support( $feature ) {
		add_action('after_setup_theme', function() use ( $feature ) {
			add_theme_support( $feature );
		});
	}

	/**
	 * Deregister theme support for a certain feature
	 */
	public function remove_theme_support( $feature ) {
		add_action('after_setup_theme', function() use ( $feature ) {
			remove_theme_support( $feature );
		});
	}

	/**
	 * Register a navigation menu location.
	 */
	public function addNavMenus( $args ) {
		add_action('after_setup_theme', function() use ( $args ) {
			register_nav_menus($args);
		});
	}

	/**
	 * Remove the deault image sizes small, medium, large
	 */
	public function remove_default_images( $sizes ) {
		unset( $sizes['small'] );
		unset( $sizes['medium'] );
		unset( $sizes['large'] );
		unset( $sizes['medium_large'] );
		return $sizes;
	}

	/**
	 * Adds the theme CSS to the Gutenberg editor.
	 */
	public function add_editor_styles() {
		add_editor_style();
		add_theme_support( 'editor-styles' );
		add_theme_support( 'align-wide' );
		add_editor_style( 'dist/css/vendor.min.css' );
		add_editor_style( 'dist/css/app.min.css' );
	}

	/**
	 * Removes unneccessary block styles from the frontend.
	 */
	public function remove_block_styles() {
		wp_dequeue_style( 'wp-block-library' );
		wp_dequeue_style( 'wp-block-library-theme' );
		wp_dequeue_style( 'wc-blocks-style' );
	}

	/**
	 * Remove regular posts from admin
	 */
	public function post_remove_admin() {
		remove_menu_page('edit.php');
	}

	/**
	 * Adds Theme Settings option page
	 */
	public function options_page() {
		if( function_exists('acf_add_options_page') ) {
			$theme_options = acf_add_options_page( array(
				'page_title' => __('Theme Settings', 'redacre'),
				'menu_title' => __('Theme Settings', 'redacre'),
				'menu_slug'	 => 'theme-settings',
				'capability' => 'edit_posts',
				'redirect'   => false
			));
		}
	}

	public function set_acf_settings() {
		acf_update_setting( 'enable_shortcode', false );
	}

	public function remove_empty_field_group_message( $message, $block_name ) {
		if ( get_current_user_id() !== 1 ) :
			$message = '';
		endif;
		return $message;
	}

	public function login_error_message() {
		return __('Something is wrong!', 'redacre');
	}

	public function security_headers( $headers ) {
		if ( !is_admin() ) :
			$headers['X-Frame-Options']        = 'SAMEORIGIN';
			$headers['X-Content-Type-Options'] = 'nosniff';
			$headers['Referrer-Policy']        = 'no-referrer-when-downgrade';
			$headers['Feature-Policy']         = "microphone 'none'";
			$headers['Permissions-Policy']     = "microphone=()";

			if ( is_ssl() ) :
				$headers['Strict-Transport-Security'] = 'max-age=31536000;includeSubDomains';
			endif;
		endif;
		
		return $headers;
		
	}

	/**
	* Add SVG capabilities
	*/
	public function wpcontent_svg_mime_type( $mimes = array() ) {
		$mimes['svg'] = 'image/svg+xml';
		$mimes['svgz'] = 'image/svg+xml';
	
		return $mimes;
	}

	public function upload_svg($upload) {
		if (!empty($upload["type"]) && $upload["type"] === "image/svg+xml") {
			$contents = file_get_contents($upload["tmp_name"]);
			if (strpos($contents, "<?xml") === false) {
				file_put_contents($upload["tmp_name"], '<?xml version="1.0" encoding="UTF-8"?>' . $contents);
			}
		}
		
		return $upload;
	}
}