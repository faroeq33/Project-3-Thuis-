<?php 	
 $filename = “FILE_IO.CSV” ;
$filesize = filesize( $filename ) ;
$filestream = fopen( $filename,
‘r’ );
$content = fread($filestream, $size);
fclose( $filestream );