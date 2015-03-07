


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>314购物搜索-购物从这里开始......</title>
<META name="Keywords" content="购物搜索">
<META name="Description" content="314购物搜索—京东商城、亚马逊、当当网、苏宁易迅、十大主流商家一起PK吧！">
<LINK href="css/base.css" rel="stylesheet" type="text/css"> 
<LINK href="css/webscan6.css" rel="stylesheet">	
<style>
.wrap {
	width:1000px;
	margin:0 auto;	
}
.wrap IMG{
	 width:90px;
	 height:40px
	}

</style>
</head>

<BODY>
<DIV id="headerbox">
<DIV class="header">
<DIV class="logo"><A title="" href="http://www.314buy.cn/"><IMG alt="" src="images/logo2.png"></A></DIV>
<DIV class="webscan-menu">
<UL>
  <LI>买东西一定要货比三家，同样的产品比价格、同样的价格比服务，314购物搜索，主流商家一键PK！不是一般的方便！</LI></UL></DIV>
</DIV>

<DIV style="margin-top:30px; margin-left:30px">
<FORM name="checkwebsiteform" class="clearfix" id="scan" action="jdgoods.php" method="get">
<SPAN id="scanHttp">商品关键词</SPAN><SPAN id="scanInput">
<INPUT style="color:#000" name="key" 
id="url" type="text"></SPAN>
<SPAN id="scanSubmit">
	<input type="submit"  id="tijiao" value="一键PK"/>
</SPAN>
</FORM>
<DIV class="clearfix" id="tj">
<P class="banner p_1">有标准型号、品牌产品，更易比价格！</P>
</DIV>
</DIV>
<DIV style="clear:both"></DIV>

<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/taobao.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=taobao&<?php if (isset($_GET['key']))  echo "key=". urlencode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>


<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/jdong.gif"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=jd&<?php if (isset($_GET['key']))  echo "key=". urlencode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
<!---->

<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/neweggs.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=newegg&<?php  //echo "key=". rawurlencode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
-->


<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/wobuy.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=51buy&<?php if (isset($_GET['key'])) echo "key=". urlencode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
<!---->


<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/tmall.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=tmall&<?php echo "key=". urlencode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
<!---->

		

<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/redboy.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=redbaby&<?php if (isset($_GET['key']))echo "key=".$_GET['key']?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
<!---->

<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/dangdangs.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=dangdang&<?php //if (isset($_GET['key'])) echo "key=". urldecode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
-->

<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/gome.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=guomei&<?php //if (isset($_GET['key'])) echo "key=". $_GET['key']?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
-->

<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/womai.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=womai&<?php //if (isset($_GET['key']));$_GET['key'] =  iconv("GBK","utf-8",$_GET['key']);  echo "key=".urlencode($_GET['key'])?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
-->


<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/vipdian.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=vipshop&<?php// if (isset($_GET['key']));$_GET['key'] =  iconv("UTF-8","GBK",$_GET['key']);  echo "key=".$_GET['key']?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
-->

<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/amazon.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=amazon&<?php// if (isset($_GET['key']))  echo "key=".$_GET['key']?>" frameborder=0>
    </iframe>
</DIV>
</DIV>
-->


<!--
<DIV class="top" style="height:280px">
<DIV class="wrap">
<IMG src="images/oneshop.jpg"/> 
</DIV>
<DIV align="center" style="margin-left:13px">
    <iframe scrolling="auto" style="border: #999 1px solid" id="ifr" name="ifr" width="1001" height="200px" src="products.php?k=oneshop&<?php// if (isset($_GET['key']));$_GET['key'] =  iconv("UTF-8","GBK",$_GET['key']);  echo "key=".$_GET['key']?>" frameborder=0>
    </iframe>
</DIV>
</DIV>

-->



<DIV class="wrapper clearfix" id="mianWrap" style="margin-top:50px">
<DIV class="class_clen_css">
<H2 class="class_clen_h2">主流商家占90%的网购市场，丰富的产品和很好的售后！</H2>
<DIV class="class_clen">
<UL>
 	 <LI> <a href="http://www.yihaodian.com/" target="_blank"><IMG src="images/oneshop.gif"/></a></LI>
 	 <LI> <a href="http://www.taobao.com/" target="_blank"><IMG src="images/taobao.gif"/></a></LI>
  	 <LI> <a href="http://www.amazon.cn/" target="_blank"> <IMG src="images/amazon.gif"></a></LI>
 	 <LI> <a href="http://www.tmall.com/" target="_blank"><IMG src="images/tmall.jpg"></a></LI>
     <LI> <a href="http://redbaby.suning.com/" target="_blank"><IMG src="images/redboy.jpg"/></a></LI>
	 <LI> <a href="http://www.dangdang.com/" target="_blank"><IMG src="images/dangdang.gif"></a></LI>
</UL>
<UL>
	<LI><a href="http://shop.vipshop.com/" target="_blank"><IMG src="images/vipshop.gif"></a></LI>
	<LI><a href="http://www.51buy.com/" target="_blank"><IMG src="images/51buy.gif"></a></LI>
	<LI><a href="http://www.jd.com/" target="_blank"><IMG src="images/jdong.gif"></a></LI>
	<LI><a href="http://www.gome.com.cn/" target="_blank"><IMG src="images/guomei.jpg"></a></LI>
	<LI><a href="http://www.newegg.com.cn/" target="_blank"><IMG src="images/newegg.gif"></a></LI>
	<LI><a href="http://www.womai.com/index-0-0.htm" target="_blank"><IMG src="images/womai.gif"></a></LI>
</UL>

</DIV></DIV>
</DIV>
  <DIV id="footer">
  <DIV class="wrapper clearfix">
  <DIV class="ft" style="border-top-color: rgb(204, 204, 204); border-top-width: 1px; border-top-style: dashed;">
  <P>Copyright©2005-2013 314购物搜索 www.314buy.cn </P></DIV></DIV>
 </DIV></UL></DIV>

 </BODY>
 </HTML>
