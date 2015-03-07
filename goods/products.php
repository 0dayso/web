
<?php

	include_once("config.php");
	//include_once("fun.php");


?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/products.css" rel="stylesheet" type="text/css" />

</head>
<body>
<DIV class="goods">
	<DIV class="font1" align="center">

<?php

		//淘宝网
	//echo $_GET['k'];
	if($_GET['k']=="taobao")
		{
			$url = 'http://s.taobao.com/search?promote=0&filterFineness=2&initiative_id=staobaoz_20130719&tab=all&q='.$_GET['key'].'&style=list';
			$fcontents = file_get_contents($url);	
			$fcontents =  iconv("GBK","UTF-8",$fcontents);
			preg_match_all('/<div class="row item icon-datalink"([\w\W]*?)<div class="col dealing">/', $fcontents, $list);	
			
			

				
				
	
			
		 echo "<table style='border: 1px solid '>";
		 	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][$i], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][$i], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][$i],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		 echo "</table>";
		  

		  
			

			   if(!isset($_GET['k']) && $_GET['k'] != 'taobao') 	
			   exit;
		}
	
	
	
	
	
	
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

	</DIV>
</DIV>

<DIV class="goods">
	</DIV>
	<DIV class="font1" align="center">
    
<?php

			    $k = $_GET['k'];
				$key = $_GET['key'];
			    $fjd = urlfopen(str_replace('#key#',$key,$config[$k]['url']));


	    //京东网
		 if($_GET['k']=="jd")
			{	
			
				$url='http://search.jd.com/Search?keyword='.$_GET['key'].'&enc=utf-8&area=1';
				$fjd = urlfopen($url);
				$fjd =  iconv("GBK","UTF-8",$fjd);	
				preg_match_all('/<li sku="([\w\W]*?)<div class="p-price" >/',$fjd,$jd);
		
				for($i=0;$i<count($jd[0]);$i++)
				{
						
						//内容
						preg_match_all('/<a target="_blank" href="([\w\W]*?)<\/a>/',$jd[0][0], $title);
						//图片	
					    preg_match_all('/data-lazyload="(.*)"/', $jd[0][$i], $img);
						//链接
						preg_match_all('/href="([^"]+)"/',$jd[0][$i],$href);
						
						echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[0][1]."</a>"."</br>"."</br>";
				
				}
			}
		/**/


?>
	</DIV>
</DIV>

<DIV class="goods">
	<DIV class="font1" align="center">
    <?php
	//天猫网
   if($_GET['k']=="tmall")
			{
			   $url ='http://list.tmall.com/search_product.htm?q='.$_GET['key'].'&user_action=initiative&at_topsearch=1&sort=st&type=p&cat=&style=';
			   $fcontents = file_get_contents($url);
			   $fcontents =  iconv("GBK","UTF-8",$fcontents);
		       preg_match_all('/<div class="product"([\w\W]*?)<p class="productStatus">/',$fcontents,$list);
		 	 
			  for($i=0;$i<count($list[0]);$i++)
			  { 
				   //图片
				   preg_match_all('/src="([^"]+)"/',$list[0][$i],$img);
				   //内容
				   preg_match_all('/title="([^"]+)"/',$list[0][$i],$title);
				   //价格
				   preg_match_all('/&yen;(.*)<\/em>/',$list[0][$i],$price);
				   //链接
				   preg_match_all('/href="([^"]+)"/',$list[0][$i],$href);   
				   
				   echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[1][1]."</a>".$price[0][0]."</br>";

			  }
		}
	/*	*/
	?>
    
    
		
  	</DIV>

</DIV>

<DIV class="goods">	
	<DIV class="font1" align="center">
    <?php
    		
	/*		//当当网  问题：输入拼音可以  汉子不行
		
		if($_GET['k']=='dangdang')
			{
				$url = 'http://search.dangdang.com/?key='.$_GET['key'].'&show=list';
				$fdang =urlfopen($url);
				$fdang =  iconv("GBK","UTF-8",$fdang);
				preg_match_all('/<div class="inner">([\w\W]*?)<\/div>/',$fdang,$list);		


		for($i=1;$i<count($list[0]);$i++)
			{
				
		        //图片
				preg_match_all("/src='([^']+)'/",$list[0][$i],$img);
				//链接
				preg_match_all('/href="([^"]+)"/',$list[0][$i],$href);
				//内容
				preg_match_all('/title="([^"]+)"/',$list[0][$i],$title);
				
		        echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[1][1]."</a>"."</br>";

			}
				
		}
	
*/		
	 	?>
	
	</DIV>
</DIV>



<DIV class="goods">	
	<DIV class="font1" align="center">
    <?php
		
/*	if($_GET['k']=='amazon')
			{
		
    		//亚马逊
			$url='http://www.amazon.cn/s/ref=nb_sb_noss_1?__mk_zh_CN='.$_GET['key'].'&url=search-alias%3Daps&field-keywords='.$_GET['key'].'';
			$fcontents = file_get_contents($url);	
			preg_match_all('/<div class="image imageContainer">([\w\W]*?)<span class="grey">/',$fcontents,$list);
	
			for($i=0;$i<count($list[0]);$i++)
			  {
						
				//图片
				preg_match_all('/src="([^"]+)"/',$list[0][$i],$img);
				//内容
				preg_match_all('/<span class="med reg">(.*)<\/span>/',$list[0][$i],$title);
				//echo $title[1][0];
				//链接
				preg_match_all('/href="([^"]+)"/',$list[0][$i],$href);
				//价格
				preg_match_all('/<span class="bld lrg red">(.*)<\/span>/',$list[0][$i],$price);
				echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[1][0]."</a>".$price[0][0]."</br>";
	
			  }
				
			}	
	
		*/		
	 	?>
	
	</DIV>
</DIV>


<DIV class="goods">	
	<DIV class="font1" align="center">
    	<?php
		//红孩子网
		if($_GET['k']=='redbaby')
		{
         	
			$url = 'http://search.suning.com/emall/search.do?keyword='.$_GET['key'].'&ch=1&cityId=9173'; 
			$fcontents = urlfopen($url);	
			preg_match_all('/<li id="([\w\W]*?)<\/li>/',$fcontents,$list);
			
			
		 	for($i=0;$i<count($list[0]);$i++)
			{
				//内容
				preg_match_all('/ title="([^"]+)"/',$list[0][$i], $title);
				//图片
				preg_match_all('/src2="([^"]+)"/', $list[0][$i], $img);
				//链接
				preg_match_all('/href="([^"]+)"/',$list[0][$i],$href);
				
				echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[1][1]."</a>"."</br>";
			}
		}
	/* 	*/
	 	?>
	 
	</DIV>
</DIV>




<DIV class="goods">	
	<DIV class="font1" align="center">
    	<?php
		//新蛋网 问题：拼音可以 中文不行
		
	/*   if($_GET['k']=='newegg')
		{
			   
   		    $url = 'http://www.newegg.com.cn/Search.aspx?keyword='.$_GET['key'].''; 
			$fcontents = urlfopen($url);
		    $fcontents =  iconv("GBK","UTF-8",$fcontents);	
			preg_match_all('/<li class="cls">([\w\W]*?)<\/li>/', $fcontents, $list);			
	
			for($i=0;$i<count($list[0]);$i++)
			{
					//图片
					preg_match_all('/<img src="([^"]+)"/',$list[0][$i],$img);
					//价格
					preg_match_all('/<span class="price">([\w\W]*?)<\/span>/',$list[0][$i],$price);
					//内容
					preg_match_all('/<p class="title">([\w\W]*?)<\/p>/',$list[0][$i],$title);
						
				    echo "<a href=><img src=\"".$img[1][0]."\" />".$title[0][0]."</a>";
					echo $price[0][0];
					echo "<br>";
					
			}				
    }
	*/	
	 	?>
	 
	</DIV>
</DIV>



<DIV class="goods">	
	<DIV class="font1" align="center">
    	<?php
		//我买网（有的商品没有）
/*
if($_GET['k']=='womai')
	{
$url ="http://www.womai.com/ProductList.do?Cid=606&rypId=608&zhId=605&mid=0&Keywords=".$_GET['key']."2Ctitle%2Cmer_title%2Cbrand%2CcloumnName%2Ckeywords%2CarticleRuleTitle%2CactiveName%2CProductFeatures&searchlist=1&isKeyCommendClick=1&topKeywords=".$_GET['key']."";
			$fcontents = urlfopen($url);
			$fcontents =  iconv("GBK","UTF-8",$fcontents);	
			echo $fcontents;
			preg_match_all('/<div class="proitem_list">([\w\W]*?)<div class="product_item_price"/', $fcontents, $list);	
			echo $list;
			print_r ($list);
			
			
			exit;
			//内容
			preg_match_all('/alt="([^"]+)"/',$list,$title);
			
			//图片
			preg_match_all('/original="([^"]+)"/',$list[0][0],$img);
			echo $img;
			
			exit;
			for($i=0;$i<count($list[0]);$i++)
			{
				
				//图片
				preg_match_all('/original="([^"]+)"/',$list[0][$i],$img);
				echo $img;
			
			   //内容
				preg_match_all('/alt="([^"]+)"/',$list,$title);
				
			
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$img[1][0]."\" />".$title[2][0]."</a>";
				echo "<br>";
				
			}
	
	
	
	
	
	}
*/
		?>
	 
	</DIV>
</DIV>


<DIV class="goods">	
	<DIV class="font1" align="center">
    	<?php
		
		//一号店 url地址变动 要解码2次
	/*		
			$url = 'http://search.yihaodian.com/s2/c0-0/'.$_GET['key'].'/6/';
			$fcontents = urlfopen($url);	
		//	echo $fcontents;
				
			
			preg_match_all('/<div class="itemSearchResultCon "([\w\W]*?)<\/div>/', $fcontents, $list);	
			
			
			 for($i=0;$i<count($list[0]);$i++)
				{
					//图片
					preg_match_all('/src="([^"]+)"/',$list[0][$i],$img);
					//价格
					preg_match_all('/">(.*)<\/strong>/',$list[0][$i],$price);
				   //内容
					preg_match_all('/title="([^"]+)"/',$list[0][$i],$title);
					//链接
					preg_match_all('/href="([^"]+)"/',$list[0][$i],$href);
	
				  
				   echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[1][1]."</a>"."</br>";
	
				}
			
	/* */
	 	?>
	 
	</DIV>
</DIV>




<DIV class="goods">	
	<DIV class="font1" align="center">
    <?php
	/*	
		//国美网  问题：不显示了 中文可以 拼音不行
		if($_GET['k']=='guomei')
		  {	
    		$url = 'http://www.gome.com.cn/ec/homeus/n/search/gomeSearchResults.jsp?question='.$_GET['key'].'&show=list&first=1';            		            $fcontents = urlfopen($url);	
			//echo $fcontents;
			preg_match_all('/<div class="youhui">([\w\W]*?)<\/div>/', $fcontents, $list);	
			
			for($i=0;$i<count($list[0]);$i++)
			{
				 preg_match_all('/title="([^"]+)"/', $list[0][$i], $title);
				 preg_match_all('/<span class="fl">(.*)<\/span>/', $list[0][$i], $price);
				 echo "<a href=\"".$title[1][0]."\">".$title[1][0]."</a>".$price[0][0]."</br>";
				 echo "<br>";
				
			}
   		   }
	*/
	 	?>
	 
	</DIV>
</DIV>











<DIV style="clear:both"> </DIV>

<DIV class="goods">
	
	<DIV class="font1" align="center">
    
  		 <?php
    		
		if($_GET['k']=='51buy')
			{
			//易迅网
    		$url = 'http://searchex.51buy.com/html?key='.$_GET['key'].'&as=1&show=1&area=1'; 
			$fcontents = urlfopen($url);	
		    preg_match_all('/<li class="item_list" ([\w\W]*?)<\/li>/',$fcontents, $list);
			
			
			for($i=0;$i<count($list[0]);$i++)
			{
				//内容
				preg_match_all('/ title="([^"]+)"/',$list[0][$i], $title);
				//图片
				preg_match_all('/ init_src="([^"]+)"/', $list[0][$i], $img);
				//链接
				preg_match_all('/href="([^"]+)"/',$list[0][$i],$href);
				//价格
				preg_match_all('/<strong class="hot">(.*)<\/strong>/', $list[0][$i], $price);	
			  
			    echo "<a href=\"".$href[1][0]."\"><img src=\"".$img[1][0]."\" /  target=\"_blank\">".$title[1][1]."</a>".$price[0][0]."</br>";
			}
			
		}
	/*	*/		
			
	 	?>
		 
	</DIV>

</DIV>



</body>
</html>
