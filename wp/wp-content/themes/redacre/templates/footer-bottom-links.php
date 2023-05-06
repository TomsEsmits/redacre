<?php
  $link = $args['link'];
  $counter = $args['counter'];
  $delay_string = '0.' . $counter . 's';

  $link = Red_Acre_Helper::generate_acf_link(array(
    'link' => $link['link'],
    'class' => 'site-footer__bottom-link wow fadeInUp',
    'link_attributes' => array(
      'title' => $link['link']['title'],
      'alt' => $link['link']['title'],
      'target' => $link['link']['target'] ?? null,
      'data-wow-delay' => $delay_string
    )
  ));

  echo $link;
?>

