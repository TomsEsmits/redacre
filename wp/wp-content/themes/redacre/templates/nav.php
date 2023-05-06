<?php 
$logo = get_field('logo', 'options');

$logo = Red_Acre_Helper::generate_image( array(
	'image'           => $logo,
	'figure'          => true,
	'figure_class'    => 'site-header__logo',
	'link'            => get_home_url(),
));

$args = array(
	'theme_location'  => 'primary',
	'menu_class'      => 'site-header__navbar-list',
	'container'       => 'nav',
	'container_class' => 'site-header__navbar',
	'echo'            => false,
	'fallback_cb'     => false
); 
$nav_menu = wp_nav_menu( $args );

?>
<header class="site-header">
	<div class="container">
		<div class="site-header__inner-wrapper">
			<div class="site-header__logo-wrapper">
				<?php echo $logo; ?>
				<p class="site-header__logo-text">More</p>
			</div>
			<div class="site-header__position-wrapper">
				<?php echo $nav_menu; ?>
				<div class="site-header__button-wrapper">
					<a href="#" class="btn btn--main" title="Log in">Log In</a>
					<a href="#" class="btn btn--main" title="Sign Up">Sign Up</a>
				</div>
			</div>
			<div class="site-header__mob-menu-icon"></div>
		</div>
	</div>
</header>
