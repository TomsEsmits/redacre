<?php
  $slide = $args['slide'];

  //var_dump($slide);

  $image = Red_Acre_Helper::generate_image( array(
    'image'           => $slide['image'],
    'figure'          => true,
    'figure_class'    => 'tools__slide-image',
    'link'            => null,
  ));

  $title = Red_Acre_Helper::generate_paragraph(array(
    'text' => $slide['title'],
    'class' => 'tools__slide-title'
  ));

  $text = Red_Acre_Helper::generate_paragraph(array(
    'text' => $slide['text'],
    'class' => 'tools__slide-text'
  ));
?>

<div class="glide__slide">
  <div class="tools__inner-wrapper">
    <?php echo $image; ?>
    <?php echo $title; ?>
    <?php echo $text; ?>
  </div>
</div>