<span class="lg_select_box"><select onchange="chkMail(this.value,this)" name="domainss" class="lg_select" id="top_mail"><option selected="selected" value="">--ѡ������--</option><option value="163">@163.com ����</option><option value="126">@126.com ����</option><option value="sina">@sina.com ����</option><option value="sohu">@sohu.com �Ѻ�</option><option value="yahoo">@yahoo.com.cn</option><option value="yahoocn">@yahoo.cn �Ż�</option><option value="tom">@tom.com</option><option value="21cn">@21cn.com</option><option value="yeah">@yeah.net ����</option><option value="139">@139.com ���ƶ�</option><option value="baidu">�ٶ�</option><option value="51">51.com</option><option value="xn">������</option><option value="�ڵ���ҳ��¼��" class="blue">�ڵ���ҳ��¼��</option><option id="red_qq" value="qq">@qq.com</option><option id="red_Gmail" value="Gmail">@gmail.com �ȸ�</option><option id="red_hotmail" value="hotmail">@hotmail.com</option><option value="sinacn" id="red_sinacn">@sina.cn ����</option><option id="red_qqkj" value="qqkj">QQ�ռ�</option><option id="red_sinablog" value="sinablog">����΢��</option><option id="red_kaixin001" value="kaixin001">������</option><option id="red_webqq" value="webqq">webqq</option><option id="red_alipay" value="alipay">֧����</option><option value="moreEmail" class="blue">��������&raquo;</option></select></span>

<script type="text/javascript"> 
var TURL = [
{t:"_blank"},
[{i:"��������",h:"http://news.sina.com.cn/"},{i:"��������",h:"http://sports.sina.com.cn/"},{i:"����΢��",h:"http://weibo.com/?c=spr_web_zyzt_2345_weibo_t001"},{i:"���˲ƾ�",h:"http://finance.sina.com.cn/"},{i:"��������",h:"http://auto.sina.com.cn/?c=spr_web_zyzt_2345_auto_t001"},{i:"������Ƶ",h:"http://video.sina.com.cn/"},{i:"���˾���",h:"http://mil.news.sina.com.cn/"},{i:"����NBA",h:"http://sports.sina.com.cn/nba/"}],
[{i:"�Ѻ�����",h:"http://news.sohu.com/"},{i:"�Ѻ�����",h:"http://auto.sohu.com/?pvid=f3757ecae3671698"},{i:"�Ѻ�����",h:"http://sports.sohu.com/"},{i:"�Ѻ�΢��",h:"http://t.sohu.com/"},{i:"�Ѻ���Ƶ",h:"http://tv.sohu.com/?pvid=55b1c68351044986"},{i:"�Ѻ�����",h:"http://yule.sohu.com/"},{i:"�Ѻ��ƾ�",h:"http://business.sohu.com/"},{i:"�Ѻ�IT",h:"http://it.sohu.com/"}],
[{i:"�����Ѷ",h:"http://news.ifeng.com/"},{i:"��˾���",h:"http://news.ifeng.com/mil/"},{i:"�������",h:"http://phtv.ifeng.com/"},{i:"�����Ƶ",h:"http://v.ifeng.com/"},{i:"���ֱ��",h:"http://v.ifeng.com/live/"},{i:"��˲ƾ�",h:"http://finance.ifeng.com/"},{i:"�������",h:"http://ent.ifeng.com/"},{i:"��˿Ƽ�",h:"http://tech.ifeng.com/"}],
[{i:"��������",h:"http://email.163.com/"},{i:"��������",h:"http://news.163.com/"},{i:"��������",h:"http://sports.163.com/"},{i:"��������",h:"http://auto.163.com/"},{i:"���׿Ƽ�",h:"http://tech.163.com/"},{i:"�������",h:"http://photo.163.com/"},{i:"�е��ʵ�",h:"http://dict.youdao.com/?"},{i:"������",h:"http://open.163.com/"}],
[{i:"QQ�ռ�",h:"http://qzone.qq.com/"},{i:"��Ѷ����",h:"http://news.qq.com/"},{i:"��Ѷ΢��",h:"http://t.qq.com/"},{i:"QQ����",h:"http://mail.qq.com/"},{i:"��ҳQQ",h:"http://web.qq.com/"},{i:"��Ѷ��Ƶ",h:"http://v.qq.com/"},{i:"��Ѷ��Ϸ",h:"http://games.qq.com/"},{i:"QQ��ֵ",h:"http://pay.qq.com/"}],
[{i:"�ٶ�����",h:"http://tieba.baidu.com/"},{i:"�ٶ�֪��",h:"http://zhidao.baidu.com/"},{i:"�ٶ�MP3",h:"http://mp3.baidu.com/"},{i:"�ٶ���Ƶ",h:"http://video.baidu.com/"},{i:"�ٶ��Ŀ�",h:"http://wenku.baidu.com/"},{i:"�ٶȰٿ�",h:"http://baike.baidu.com/"},{i:"�ٶȵ�ͼ",h:"http://map.baidu.com/"},{i:"�ٶ�ͼƬ",h:"http://image.baidu.com/?"},{i:"�ٶ�����",h:"http://news.baidu.com/?"}]
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
