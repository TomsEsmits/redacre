<?php
  $footer_column = $args['column'];
  $counter = 1;
?>

<?php foreach( $args['column'] as $column ) : ?>
  <?php $delay_string = '0.' . $counter . 's'; ?>
  <div class="site-footer__column wow zoomIn" data-wow-delay="<?php echo $delay_string; ?>">
    <?php 
      $header = Red_Acre_Helper::generate_header(array(
        'text' => $column['title']['title'],
        'tag' => $column['title']['tag'],
        'class' => 'site-footer__column-title'
      ));
    ?>
    <?php echo $header; ?>

    <ul class="site-footer__column-list">
      <?php 
        foreach( $column['links'] as $link ) :
          $footer_link = Red_Acre_Helper::generate_acf_link(array(
            'link' => $link['link'],
            'class' => 'site-footer__column-link',
            'link_attributes' => array(
              'title' => $link['link']['title'],
              'alt' => $link['link']['title'],
              'target' => $link['link']['target'] ?? null
            )
          ));
      ?>
        <li class="site-footer__column-list-item">
          <?php echo $footer_link; ?>
        </li>
      <?php endforeach; ?>
    </ul>
  </div>
  <?php $counter++; ?>
<?php endforeach; ?>
