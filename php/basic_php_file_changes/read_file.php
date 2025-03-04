<?php
  $file = fopen("written_messages.txt", "r") or die("Unable to open file.");

  while(!feof($file)) {
    echo fgets($file) . "<br>";
  }

  fclose($file);
?>

<p><a href="../index.html">Back</a></p>