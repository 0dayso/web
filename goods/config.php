<?php
$config = array(
//淘宝网
'taobao'=>array('utf-8'=> false,'item'=>'/<div class="row item icon-datalink"([\w\W]*?)<div class="col dealing">/','img'=> '/<img src=\"(.*)\" \/>/','title'=>'/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/','price'=>'/<div class="col total">([\w\W]*?)<div class="extend">/','url'=>'http://s.taobao.com/search?promote=0&filterFineness=2&initiative_id=staobaoz_20130719&tab=all&q=#key#&style=list'),

//京东网
'jd'=>array('utf-8'=> false,'sku'=>'/<li sku="([\w\W]*?)<div class="p-price" >/','img'=> '/<img width="220" height="220" data-img="1" data-lazyload=\"(.*)\" \/>/','title'=>'/<div class="p-name">([\w\W]*?)\<\/font>/','url'=>'http://search.jd.com/Search?keyword=#key#&enc=utf-8'),

//新蛋网
'newegg'=>array('utf-8'=>false,'cls'=>'/<li class="cls">([\w\W]*?)<\/li>/','img'=>'/<div class="img">([\w\W*?])<span class="icon_pro">/','title'=>'/<p class="title">([\w\W*?])<\/a>/','url'=>'http://www.newegg.com.cn/Search.aspx?keyword=#key#'),

//天猫网
'tmall'=>array('utf-8'=>false,'product'=>'/<div class="product"([\w\W*?])<span>/','img'=>'/<img src=\"(.*)\" \/>/','title'=>'/<p class="productTitle">([\w\W*?])<\/p>/','price'=>'<p class="productPrice">([\w\W*?])<\/p>/','url'=>'http://list.tmall.com/search_product.htm?q=#key#D3&user_action=initiative&at_topsearch=1&sort=st&type=p&cat=&style='),

//当当网
'dangdang'=>array('utf-8'=>false,'inner'=>'/<div class="inner">([\w\W]*?)<\/div>/','img'=>'/<img src=\"(.*)\" \/>/','title'=>'/<p class="name" >([\w\W]*?)<p class="subtitle" >/','price'=>'/<p class="price" >([\w\W]*?)<p class="name" >/','url'=>'http://search.dangdang.com/?key=#key#'),

//亚马逊网
'amazon'=>array('utf-8'=>true,'imageContainer'=>'/<div class="image imageContainer">([\w\W]*?)<span class="grey">/','img'=>'/<div class="image imageContainer">([\w\W]*?)<span class="grey">/','title'=>'/<span class="med reg">(.*)<\/span>/','url'=>'http://www.amazon.cn/s/ref=nb_sb_noss_1?__mk_zh_CN=#key#&url=search-alias%3Daps&field-keywords=#key#'),

//红孩子网
'redbaby'=>array('utf-8'=>true,'id'=>'/<li id="([\w\W]*?)<\/li>/','img'=>'/<img class="err-product" src2="([^"]+)"/','title'=>'/<span>([\w\W]*?)<\/span>/','url'=>'http://search.suning.com/emall/search.do?keyword=#key#&ch=1&cityId=9264'),

//一号店网
'oneshop'=>array('utf-8'=>true,'producteg'=>'/<li class="producteg" ([\w\W]*?)<\/li>/','img'=>'/<img src=\"(.*)\"/','title'=>'/<a class="title"([\w\W]*?)<\/a>/','price'=>'/<strong id="([\w\W]*?)<\/strong>/','url'=>'http://search.yihaodian.com/s2/c0-0/#key#/1/'),

//国美网
'guomei'=>array('utf-8'=>true,'lists-img'=>'/<div class="lists-img  js-lists-imgtab">([\w\W*?])<div class="lists-btngroup">/','img'=>'/<img src=\"(.*)\" \/>/','title'=>'/<h2>([\w\W*?])<\/h3>/','price'=>'/<span class="fl">([\w\W*?])<\/span>/','url'=>'http://www.gome.com.cn/ec/homeus/n/search/gomeSearchResults.jsp?question =#key#&show=list&first=1'),

//易迅网
'51buy'=>array('utf-8'=>true,'item_list'=>'/<li class="item_list" ([\w\W]*?)<\/li>/','img'=>'/ init_src="([^"]+)"/','title'=>'/<a target="_blank" title="([\w\W]*?)<\/a>/','price'=>'/<p class="price_icson">(.*)<\/p>/','url'=>'http://searchex.51buy.com/html?key=#key#&as=1&show=1&area=1'),

//唯品网
//'vipshop'=>array('utf-8'=>)

//我买网
'womai'=>array('utf-8'=>false,'proitem_list'=>'/<div class="proitem_list">([\w\W]*?)<div class="product_item_price"/','title'=>'/<p class="title">([\w\W*?])<\/a>/','url'=>'http://www.womai.com/ProductList.do?Cid=606&rypId=608&zhId=605&mid=0&Keywords=#key#%2Cmer_title%2Cbrand%2CcloumnName%2Ckeywords%2CarticleRuleTitle%2CactiveName%2CProductFeatures&searchlist=1&isKeyCommendClick=1&topKeywords=#key#'),
);

$k='taobao';
$k='jd';
//'newegg','tmall','dangdang','amazon','redbaby','oneshop','guomei','51buy','womai','vipshop';
$config[$k]['utf-8']


?>