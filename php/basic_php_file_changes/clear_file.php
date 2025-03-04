<?php
  $file = fopen("written_messages.txt", "w") or die("Unable to open file.");

  fclose($file);
?>

<p> File emptied successfully. </p>

<p><a href="../index.html">Back</a></p>