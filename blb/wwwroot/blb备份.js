function c()
{

var v=document.getElementById("t1").value
var l=v.length;
var ml=0;
for(i=0;i<l;i++)
{
//if((v[i] & 0) == 0)
if(!isNaN(v[i]))
{
ml++;
}
}
if (ml>8){
document.getElementById("t1").value="";
alert("输入最多不可包含超过8个数字，请把产品名称数字量减少并重新输入!");}
}

function on()
{
document.getElementById("sp1").style.display=""
}
function out()
{
document.getElementById("sp1").style.display="none"
}
function trover1(e1)
{
var gete=document.getElementById(e1);

gete.className="trover";

}
function trout1(e1)
{
var gete=document.getElementById(e1);

gete.className="trcss";
}

function reabc(img)
{
    var imageUrl = 'retest.asp'; //你的生成图片的ASPX页面
    img.src = imageUrl + '?' + Math.random();
}
function all1(e1)
{
var gete=document.getElementById(e1);

gete.className="tdover";

}

function all1()
{ 
var el=document.getElementById("td1");
       
 el.className="tdover";
var el2=document.getElementById("td2");
        el2.className="tdall";
var el3=document.getElementById("td3");
        el3.className="tdall";
document.getElementById("d2").classname="maincss"
document.getElementById("d2").style.display=""
document.getElementById("d21").style.display="none"
document.getElementById("d31").style.display="none"
//alert("n1");
}


function all2()
{
var el2=document.getElementById("td2");
        el2.className="tdover";
var el=document.getElementById("td1");
        el.className="tdall";
var el3=document.getElementById("td3");
        el3.className="tdall";
document.getElementById("d21").classname="maincss"
document.getElementById("d21").style.display=""
document.getElementById("d2").style.display="none"
document.getElementById("d31").style.display="none"
//alert("n1");
}

function all3()
{
var el3=document.getElementById("td3");
        el3.className="tdover";
var el=document.getElementById("td1");
        el.className="tdall";
var el2=document.getElementById("td2");
        el2.className="tdall";
document.getElementById("d31").classname="maincss"
document.getElementById("td3").classname="tdover"
document.getElementById("d31").style.display=""
document.getElementById("d21").style.display="none"
document.getElementById("d2").style.display="none"
//alert("n1");

}


function over1()
{
var el=document.getElementById("td1");
        el.className="tdover";
var el2=document.getElementById("td2");
        el2.className="tdall";
var el3=document.getElementById("td3");
        el3.className="tdall";
}
function out1()
{
var el=document.getElementById("td1");
        el.className="tdall";
var el2=document.getElementById("td2");
        el2.className="tdall";
var el3=document.getElementById("td3");
        el3.className="tdall";
}

function out2()
{

var el2=document.getElementById("td2");
        el2.className="tdall";
var el3=document.getElementById("td3");
        el3.className="tdall";
var el=document.getElementById("td1");
        el.className="tdall";
}
function out3()
{

var el3=document.getElementById("td3");
        el3.className="tdall";
var el=document.getElementById("td1");
        el.className="tdall";
var el2=document.getElementById("td2");
        el2.className="tdall";
}

function over2()
{
var el2=document.getElementById("td2");
        el2.className="tdover";
var el=document.getElementById("td1");
        el.className="tdall";
var el3=document.getElementById("td3");
        el3.className="tdall";
}

function over3()
{
var el3=document.getElementById("td3");
        el3.className="tdover";
var el=document.getElementById("td1");
        el.className="tdall";
var el2=document.getElementById("td2");
        el2.className="tdall";
}
