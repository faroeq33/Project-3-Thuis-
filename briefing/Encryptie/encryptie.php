<?php 
function encrypt($sValue, $sSecretKey)
{
	return rtrim(
		base64_encode(
			mcrypt_encrypt(
				MCRYPT_RIJNDAEL_256,
				$sSecretKey, $sValue,
				MCRYPT_MODE_ECB,
				mcrypt_create_iv(
					mcrypt_get_iv_size(
						MCRYPT_RIJNDAEL_256,
						MCRYPT_MODE_ECB
						),
					MCRYPT_RAND)
				)
			)
		);
}
$fileIndex = "text.txt";
$fileSize = filesize($fileIndex);
$fileStream = fopen($fileIndex, "w");

$sValue = "JEvaadeeer";
$sSecretKey = "kipaapkontjebillekind";
$encrypt = encrypt($sValue, $sSecretKey);

print($sValue . "<br>");

fwrite($fileStream, $encrypt);

$fileContent = file_get_contents($fileIndex, FILE_USE_INCLUDE_PATH);

print($fileContent);

fclose($fileStream);