<?php
//下载远程文件
function urlfopen($url, $limit = 0, $post = '', $cookie = '', $bysocket = FALSE  , $ip = '', $timeout = 15, $block = TRUE, $encodetype  = 'URLENCODE')
 {
  $return = '';
  $matches = parse_url($url);
  $host = $matches['host'];
  $path = $matches['path'] ? $matches['path'].(isset($matches['query']) ? '?'.$matches['query'] : '') : '/';
  $port = !empty($matches['port']) ? $matches['port'] : 80;

  if($post) {
	$out = "POST $path HTTP/1.0\r\n";
	$out .= "Accept: */*\r\n";
	$out .= "Accept-Language: zh-cn\r\n";
	$boundary = $encodetype == 'URLENCODE' ? '' : ';'.substr($post, 0, trim(strpos($post, "\n")));
	$out .= $encodetype == 'URLENCODE' ? "Content-Type: application/x-www-form-urlencoded\r\n" : "Content-Type: multipart/form-data$boundary\r\n";
	$out .= "User-Agent: $_SERVER[HTTP_USER_AGENT]\r\n";
	$out .= "Host: $host\r\n";
	$out .= 'Content-Length: '.strlen($post)."\r\n";
	$out .= "Connection: Close\r\n";
	$out .= "Cache-Control: no-cache\r\n";
	$out .= "Cookie: $cookie\r\n\r\n";
	$out .= $post;
  } else {
	$out = "GET $path HTTP/1.0\r\n";
	$out .= "Accept: */*\r\n";
	$out .= "Accept-Language: zh-cn\r\n";
	$out .= "User-Agent: $_SERVER[HTTP_USER_AGENT]\r\n";
	$out .= "Host: $host\r\n";
	$out .= "Referer: \r\n";
	$out .= "Connection: Close\r\n";
	$out .= "Cookie: $cookie\r\n\r\n";
  }
  $fp = @fsockopen(($ip ? $ip : $host), $port, $errno, $errstr, $timeout);
  if(!$fp) {
	return '';
  } else {
	stream_set_blocking($fp, $block);
	stream_set_timeout($fp, $timeout);
	@fwrite($fp, $out);
	$status = stream_get_meta_data($fp);
	if(!$status['timed_out']) {
	  while (!feof($fp)) {
		if(($header = @fgets($fp)) && ($header == "\r\n" ||  $header == "\n")) {
		  break;
		}
	  }

	  $stop = false;
	  while(!feof($fp) && !$stop) {
		$data = fread($fp, ($limit == 0 || $limit > 8192 ? 8192 : $limit));
		$return .= $data;
		if($limit) {
		  $limit -= strlen($data);
		  $stop = $limit <= 0;
		}
	  }
	}
	@fclose($fp);
	return $return;
  }
}

?>