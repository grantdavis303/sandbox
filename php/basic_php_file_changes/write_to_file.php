<?php
  $file = fopen("written_messages.txt", "a") or die("Unable to open file.");

  $message = $_POST["message"] . "\n";

  fwrite($file, $message);

  fclose($file);
?>

<p> Message added successfully. </p>

<p><a href="../index.html">Back</a></p>