<?php
  $socials = $args['socials'];
  $counter = 1;
?>

<?php foreach( $socials as $social ) : ?>
  <?php $delay_string = '0.' . $counter . 's'; ?>
  <?php
    $footer_social = Red_Acre_Helper::generate_image( array(
      'image'           => $social['icon'],
      'figure'          => true,
      'figure_class'    => 'site-footer__social-logo',
      'link'            => $social['social_url']['url'],
      'link_attributes' => array(
        'title' => $social['social_url']['title'],
        'alt' => $social['social_url']['title'],
        'target' => $social['social_url']['target'] ?? null,
        'data-wow-delay' => $delay_string,
        'class' => 'wow fadeInUp'
      )
    ));

    echo $footer_social;
  ?>
  <?php $counter++; ?>
<?php endforeach; ?>