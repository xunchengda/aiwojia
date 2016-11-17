<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:207px;left:19px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="代办服务"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="btnBackClick" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">代办服务</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top3"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="代缴水电费" xid="btnWater" target="waterContent">
   <i xid="i1"></i>
   <span xid="span1">代缴水电费</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="代充煤气费" xid="btnGas" target="gasContent">
   <i xid="i2"></i>
   <span xid="span2">代充煤气费</span></a>
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="代收快递" xid="btnMailRec" target="mailRecContent">
   <i xid="i3"></i>
   <span xid="span3">代收快递</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="代发快递" xid="btnMailSend" target="mailSendContent">
   <i xid="i4"></i>
   <span xid="span4">代发快递</span></a></div></div>
   <div class="x-panel-content " xid="workContent" style="background-color:transparent;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="2" xid="contents1">
   <div class="x-contents-content" xid="waterContent">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel7">
   
   <div class="x-panel-content" xid="content11"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="navWater" src="./water.w" routable="true"></div></div></div></div>
  <div class="x-contents-content" xid="gasContent">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="navGas" src="./gas.w" routable="false"></div></div>
   </div></div>
  <div class="x-contents-content" xid="mailRecContent">
  <div class="x-panel-content" xid="content3"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="navMailRec" src="./mailRec.w" routable="false"></div></div></div>
  <div class="x-contents-content" xid="mailSendContent">
  <div class="x-panel-content" xid="content4"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="navMailSend" src="./mailSend.w" routable="false"></div></div></div></div></div>
   </div></div>
  </div> 
</div>