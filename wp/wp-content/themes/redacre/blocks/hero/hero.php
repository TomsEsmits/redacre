<?php

/**
 * Hero Block Template.
 *
 * @param	 array $block The block settings and attributes.
 * @param	 string $content The block inner HTML (empty).
 * @param	 bool $is_preview True during AJAX preview.
 * @param	 (int|string) $post_id The post ID this block is saved to.
 */

if( isset( $block['data']['preview_image_help'] )  ) :
	echo Red_Acre_Gutenberg::get_preview_image( $block['data']['preview_image_help'], $block['name'] );
	return;
endif;

// Create id attribute allowing for custom 'anchor' value.
$id = 'hero-' . $block['id'];
if (!empty($block['anchor'])) :
	$id = $block['anchor'];
endif;

// Create class attribute allowing for custom 'className' and 'align' values.
$className = 'block hero';
if (!empty($block['className'])) :
	$className .= ' ' . $block['className'];
endif;
if (!empty($block['align'])) :
	$className .= ' align' . $block['align'];
endif;

$className = apply_filters( 'redacre_block_class', $className, $block, $post_id );

// Load values and assing defaults.
$header = get_field('header');
$content = get_field('content');
$image = get_field('image');

$header = Red_Acre_Helper::generate_header(array(
	'text' => $header['title'],
	'tag' => $header['tag'],
	'class' => 'hero__title animated zoomIn'
)); 

$content = Red_Acre_Helper::generate_wysiwyg(array(
	'content' => $content,
	'classes' => array('animated zoomIn editor-content')
));

$image = Red_Acre_Helper::generate_image( array(
	'image'           => $image,
	'figure'          => true,
	'figure_class'    => 'hero__image',
	'image_size'      => 'hero',
	'link'            => null,
));

?>
<section id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?>">
	<div class="container">
		<div class="hero__inner-container">
			<div class="hero__content-column">
				<?php echo $header; ?>
				<?php echo $content; ?>
			</div>
			<div class="hero__image-column">
				<?php echo $image; ?>
			</div>
		</div>
	</div>
</section>