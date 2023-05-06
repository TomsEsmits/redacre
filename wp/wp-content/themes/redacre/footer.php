<?php
  $footer_columns = array(
    'columns' => array(
      'column_1' => array(
        'title' => get_field('column_1_title', 'options'),
        'links' => get_field('column_1_links', 'options')
      ),
      'column_2' => array(
        'title' => get_field('column_2_title', 'options'),
        'links' => get_field('column_2_links', 'options')
      ),
      'column_3' => array(
        'title' => get_field('column_3_title', 'options'),
        'links' => get_field('column_3_links', 'options')
      ),
      'column_4' => array(
        'title' => get_field('column_4_title', 'options'),
        'links' => get_field('column_4_links', 'options')
      ),
      'column_5' => array(
        'title' => get_field('column_5_title', 'options'),
        'links' => get_field('column_5_links', 'options')
      ),
      'column_6' => array(
        'title' => get_field('column_6_title', 'options'),
        'links' => get_field('column_6_links', 'options')
      ),
    )
  );
  $socials = get_field('socials', 'options');
  $disclosure = get_field('disclosure', 'options');
  $bottom_links = get_field('bottom_links', 'options');
  $counter = 1;

  $disclosure = Red_Acre_Helper::generate_wysiwyg(array(
    'content' => $disclosure
  ));
?>

<footer class="site-footer">
  <div class="container">
    <div class="site-footer__column-wrapper">
      <?php foreach($footer_columns as $column) : ?>
        <?php get_template_part( 'templates/footer-column', null, array('column' => $column)); ?>
      <?php endforeach; ?>
    </div>
    <div class="site-footer__socials">
      <?php get_template_part( 'templates/footer-socials', null, array('socials' => $socials)); ?>
    </div>
    <div class="site-footer__disclosure">
      <?php echo $disclosure; ?>
    </div>
    <div class="site-footer__bottom-links">
      <?php foreach($bottom_links as $link) : ?>
        <?php get_template_part( 'templates/footer-bottom-links', null, array(
          'link' => $link,
          'counter' => $counter
          )); ?> 
        <?php $counter++; ?>
      <?php endforeach; ?>
    </div>
  </div>
</footer>
<?php wp_footer(); ?>
</body>
</html>
