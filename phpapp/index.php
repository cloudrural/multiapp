<!DOCTYPE html>
<html>
  <head>
    <title>PHP App</title>
  </head>
  <body>
    <h1><?php echo"This is a php application" ?></h1>
    <div>Next, we’ll display today’s date and day by PHP!</div>
    <div>
        <?php
            echo 'Today’s date is <b>' . date('Y/m/d') . '</b> and it’s a <b>'.date('l').'</b> today!';
        ?>
    </div>
  </body>
</html>
