<?php

/**
 * Tools Block Template.
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
$id = 'tools-' . $block['id'];
if (!empty($block['anchor'])) :
	$id = $block['anchor'];
endif;

// Create class attribute allowing for custom 'className' and 'align' values.
$className = 'block tools';
if (!empty($block['className'])) :
	$className .= ' ' . $block['className'];
endif;
if (!empty($block['align'])) :
	$className .= ' align' . $block['align'];
endif;

$className = apply_filters( 'redacre_block_class', $className, $block, $post_id );

// Load values and assing defaults.
$header = get_field('header');
$text = get_field('text');
$slider = get_field('slider');

$header = Red_Acre_Helper::generate_header(array(
	'text' => $header['title'],
	'tag' => $header['tag'],
	'class' => 'tools__title'
));

$text = Red_Acre_helper::generate_paragraph(array(
	'text'  => $text,
	'class' => 'tools__text'
));
?>
<section id="<?php echo esc_attr($id); ?>" class="<?php echo esc_attr($className); ?>">
	<div class="container">
		<div class="wow fadeInUp" data-wow-delay="0.2s">
			<?php echo $header; ?>
		</div>
		<div class="wow fadeInUp" data-wow-delay="0.3s">
			<?php echo $text; ?>
		</div>
		<div class="glide tools__slider wow fadeInUp" data-wow-delay="0.4s">
			<div class="glide__track" data-glide-el="track">
				<ul class="glide__slides">
					<?php foreach($slider as $slide) : ?>
						<?php get_template_part( 'templates/slide', null, array('slide' => $slide)); ?>
					<?php endforeach; ?>
					</ul>
			</div>
		</div>
	</div>
</section>