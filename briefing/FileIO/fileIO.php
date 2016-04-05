<?php
$filename = "FILE_IO_1.CSV";
$filesize = filesize($filename);
$filestream = fopen($filename, 'r');
$content = fread($filestream, $filesize);
fwrite( $filestream, $content );
fclose($filestream);

file_exists($filename);


// $filename = "SCORE.TXT" ;
// $filestream = fopen( $filename, "w") or die("Unable to open file!");
// $content = "Score van het spel \n";
// $content .= "John Doe \t 10 punten\n";
// $content .= "Computer \t 7 punten \n";
// fwrite( $filestream, $content );
// fclose( $filestream );
