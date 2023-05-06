<?php

/**
 * Class responsible for most hooks.
 */
class Red_Acre_Custom_Hooks {
	public function __construct() {
		add_action( 'after_setup_theme', [$this, 'image_sizes'] );
	}

	public function image_sizes()
	{
		add_image_size( 'hero', 1130 );
	}
}

new Red_Acre_Custom_Hooks();
