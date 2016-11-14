<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:601px;left:45px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" idColumn="fID" onCustomRefresh=""> 
      <column label="id" name="fID" type="String" xid=""/>  
      <column label="图片" name="fImgUrl" type="String" xid=""/>  
      <column label="链接地址" name="fUrl" type="String" xid=""/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="navData" onCustomRefresh="" idColumn="fID" limit="20"> 
      <column label="id" name="fID" type="String" xid=""/>  
      <column label="名称" name="fName" type="String" xid=""/>  
      <column label="链接地址" name="fUrl" type="String" xid=""/>  
      <data xid="default2">[{"fID":"","fName":"全部","fUrl":""},{"fName":"便利购物"},{"fName":"餐饮配送"},{"fName":"蔬果配送"},{"fName":"鲜花配送"},{"fName":"早餐供应"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="resultListData" idColumn="fID"> 
      <column label="id" name="fID" type="String" xid=""/>  
      <column label="图片" name="fImgUrl" type="String" xid=""/>  
      <column label="链接地址" name="fUrl" type="String" xid=""/>  
      <column label="商家名称" name="fName" type="String" xid=""/>  
      <column label="商家地址" name="fAddress" type="String" xid=""/>  
      <column label="商家折扣" name="fDiscount" type="String" xid=""/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="生活服务"
        class="x-titlebar" style="color:#4C4C4C;background-color:#CCC;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="fa fa-angle-left fa-fw" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="fa fa-angle-left fa-fw"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">生活服务</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view " xid="" _xid="C74BEE5908700001204A18305D50A080"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView2"> 
        <div class="x-content-center x-pull-down container" xid="div4"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span3">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div5" style="background-color:#E6E6E6;"> 
           
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" style="margin-top: 44px;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="navList"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="便利购物" xid="button1" target="content1"> 
              <i xid="i1" />  
              <span xid="span1">便利购物</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="餐饮配送" xid="button2" target="content2"> 
              <i xid="i3" />  
              <span xid="span2">餐饮配送</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="蔬果配送" xid="button3"> 
              <i xid="i4" />  
              <span xid="span5">蔬果配送</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="鲜花配送" xid="button4"> 
              <i xid="i5" />  
              <span xid="span6">鲜花配送</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="早餐供应" xid="button5"> 
              <i xid="i6" />  
              <span xid="span7">早餐供应</span> 
            </a> 
          </div></div>
   <div class="x-panel-content" xid="content3" style="margin-top: 44px;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1"> 
             
          <div class="x-contents-content" xid="content1"> 
              <div component="$UI/system/components/justep/list/list" class="x-list" xid="resultList" style="padding: 5px;" limit="20"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li3" style="width:50%;padding: 5px; background-color:white;"> 
                    <img src="$UI/mine/aiwojia/main/img/carouselBox61.jpg" alt="" xid="image1" height="160px" style="width:100%; background-color:white;" />  
                    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref="$model.resultListData.ref(&quot;fName&quot;)" />  
                    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref="$model.resultListData.ref(&quot;fDiscount&quot;)" />  
                    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1"> 
                      <label class="x-label" xid="label1" style="width:53px;"><![CDATA[地址：]]></label>  
                      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref="$model.resultListData.ref(&quot;fAddress&quot;)" /> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div><div class="x-contents-content" xid="content2"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="button" xid="button6">
   <i xid="i7"></i>
   <span xid="span8"></span></a></div></div></div>
   <div class="x-panel-bottom" xid="bottom1" visible="false"></div></div>
  </div>  
        <div class="x-content-center x-pull-up" xid="div6"> 
          <span class="x-pull-up-label" xid="span4">加载更多...</span> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons"/> 
  </resource> 
</div>
