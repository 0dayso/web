<span class="lg_select_box"><select onchange="chkMail(this.value,this)" name="domainss" class="lg_select" id="top_mail"><option selected="selected" value="">--选择邮箱--</option><option value="163">@163.com 网易</option><option value="126">@126.com 网易</option><option value="sina">@sina.com 新浪</option><option value="sohu">@sohu.com 搜狐</option><option value="yahoo">@yahoo.com.cn</option><option value="yahoocn">@yahoo.cn 雅虎</option><option value="tom">@tom.com</option><option value="21cn">@21cn.com</option><option value="yeah">@yeah.net 网易</option><option value="139">@139.com 中移动</option><option value="baidu">百度</option><option value="51">51.com</option><option value="xn">人人网</option><option value="在弹出页登录↓" class="blue">在弹出页登录↓</option><option id="red_qq" value="qq">@qq.com</option><option id="red_Gmail" value="Gmail">@gmail.com 谷歌</option><option id="red_hotmail" value="hotmail">@hotmail.com</option><option value="sinacn" id="red_sinacn">@sina.cn 新浪</option><option id="red_qqkj" value="qqkj">QQ空间</option><option id="red_sinablog" value="sinablog">新浪微博</option><option id="red_kaixin001" value="kaixin001">开心网</option><option id="red_webqq" value="webqq">webqq</option><option id="red_alipay" value="alipay">支付宝</option><option value="moreEmail" class="blue">更多邮箱&raquo;</option></select></span>

<script type="text/javascript"> 
var TURL = [
{t:"_blank"},
[{i:"新浪新闻",h:"http://news.sina.com.cn/"},{i:"新浪体育",h:"http://sports.sina.com.cn/"},{i:"新浪微博",h:"http://weibo.com/?c=spr_web_zyzt_2345_weibo_t001"},{i:"新浪财经",h:"http://finance.sina.com.cn/"},{i:"新浪汽车",h:"http://auto.sina.com.cn/?c=spr_web_zyzt_2345_auto_t001"},{i:"新浪视频",h:"http://video.sina.com.cn/"},{i:"新浪军事",h:"http://mil.news.sina.com.cn/"},{i:"新浪NBA",h:"http://sports.sina.com.cn/nba/"}],
[{i:"搜狐新闻",h:"http://news.sohu.com/"},{i:"搜狐汽车",h:"http://auto.sohu.com/?pvid=f3757ecae3671698"},{i:"搜狐体育",h:"http://sports.sohu.com/"},{i:"搜狐微博",h:"http://t.sohu.com/"},{i:"搜狐视频",h:"http://tv.sohu.com/?pvid=55b1c68351044986"},{i:"搜狐娱乐",h:"http://yule.sohu.com/"},{i:"搜狐财经",h:"http://business.sohu.com/"},{i:"搜狐IT",h:"http://it.sohu.com/"}],
[{i:"凤凰资讯",h:"http://news.ifeng.com/"},{i:"凤凰军事",h:"http://news.ifeng.com/mil/"},{i:"凤凰卫视",h:"http://phtv.ifeng.com/"},{i:"凤凰视频",h:"http://v.ifeng.com/"},{i:"凤凰直播",h:"http://v.ifeng.com/live/"},{i:"凤凰财经",h:"http://finance.ifeng.com/"},{i:"凤凰娱乐",h:"http://ent.ifeng.com/"},{i:"凤凰科技",h:"http://tech.ifeng.com/"}],
[{i:"网易邮箱",h:"http://email.163.com/"},{i:"网易新闻",h:"http://news.163.com/"},{i:"网易体育",h:"http://sports.163.com/"},{i:"网易汽车",h:"http://auto.163.com/"},{i:"网易科技",h:"http://tech.163.com/"},{i:"网易相册",h:"http://photo.163.com/"},{i:"有道词典",h:"http://dict.youdao.com/?"},{i:"公开课",h:"http://open.163.com/"}],
[{i:"QQ空间",h:"http://qzone.qq.com/"},{i:"腾讯新闻",h:"http://news.qq.com/"},{i:"腾讯微博",h:"http://t.qq.com/"},{i:"QQ邮箱",h:"http://mail.qq.com/"},{i:"网页QQ",h:"http://web.qq.com/"},{i:"腾讯视频",h:"http://v.qq.com/"},{i:"腾讯游戏",h:"http://games.qq.com/"},{i:"QQ充值",h:"http://pay.qq.com/"}],
[{i:"百度贴吧",h:"http://tieba.baidu.com/"},{i:"百度知道",h:"http://zhidao.baidu.com/"},{i:"百度MP3",h:"http://mp3.baidu.com/"},{i:"百度视频",h:"http://video.baidu.com/"},{i:"百度文库",h:"http://wenku.baidu.com/"},{i:"百度百科",h:"http://baike.baidu.com/"},{i:"百度地图",h:"http://map.baidu.com/"},{i:"百度图片",h:"http://image.baidu.com/?"},{i:"百度新闻",h:"http://news.baidu.com/?"}]
],uPos = [96,221,346,471,597,722],uPosW = [109,263,416,569,722,875],uDelay=[500,100,100],uHandleS,uHandleC,groupCount=[1,1,1,1,1,1];
function tips(pos){
	var visible = arguments[1]||false,o = $("homeweb_txt1")
	if(!visible){
		o.style.visibility = "hidden";
		return;
	}
	o.innerHTML = "";
	for(var i=0,len=TURL[pos].length,frag=document.createDocumentFragment();i<len;i++){
		var a = $c("A");
		a.href = TURL[pos][i].h;
		a.innerHTML = TURL[pos][i].i;
		a.target = TURL[pos][i].t||TURL[0].t;
		frag.appendChild(a);
	}
	o.appendChild(frag);
	_pos=cookieStore.get("sts")==1?uPosW:uPos;
	o.style.left=_pos[pos-1]+"px";
	o.style.visibility = "visible";
}
function countArray(array){
	for(var i=0,len=array.length,out=0;i<len;i++){
		out += array[i];
	}
	return out;
}
function bindTips(){
	var links = $("nav").getElementsByTagName("A");
 
	for(var i=0,j=0,k=0,l=groupCount[k],len=countArray(groupCount);i<len;i++){
		var tmpEvent = (function(delay){
			var index = k;
			var _delay = delay||uDelay[0];
			
			return function(){
				if(uHandleS!=0){
					tips();
				}
				clearTimeout(uHandleC);
				clearTimeout(uHandleS);
				uHandleS = setTimeout(function(){tips(index+1,true);uHandleS=0;links[index].className="hoverlist";},_delay);
				return false;
			}
			
		});
		links[i].onmouseover = tmpEvent();
		links[i].onmouseout=function(){
			uHandleC = setTimeout(function(){tips();clearTimeout(uHandleS)},uDelay[2]);
			this.className="";
		}
		/*if(j==l-1){
			links[i].onclick=tmpEvent(uDelay[1]);
		}*/
		if(++j>l-1){
			j=0;
			k++;
			l=groupCount[k];
		}
	}
	var o = $("homeweb_txt1");
	o.onmouseover = function(){
		clearTimeout(uHandleC);
	}
	o.onmouseout = function(){
		uHandleC = setTimeout(function(){tips();clearTimeout(uHandleS)},uDelay[1]);
	}
}
bindTips();
</script>
