<?php
session_start();
$str=rand(0,9).rand(0,9).rand(0,9).rand(0,9);
$_SESSION['img']=$str;
$image=imagecreate(50,20);
$b=imagecolorallocate($image,50,50,50);
$w=30;
$h=15;
imagefilledrectangle($image,0,0,$w,$h,$b);
$color=imagecolorallocate($image,255,255,255);
imageline($image, 0, 10, 15, 15, $color);
imageline($image, 0, 10, 10, 9, $color);
$bg=imagecolorallocate($image,200,200,200);
$tc=imagecolorallocate($image,100,100,100);
imagestring($image,5,0,0,$str,$tc);
ob_clean();
header("Content-type:image/png");
imagepng($image);
imagedestroy($image);
?>