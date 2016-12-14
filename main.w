<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"
    onModelConstruct="modelModelConstruct" onunLoad="modelUnLoad" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="图片" name="fImgUrl" type="String" xid="xid2"/>  
      <column label="链接地址" name="fUrl" type="String" xid="xid9"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="店铺ID" name="fShopID" type="String" xid="xid3"/>  
      <column label="标题" name="fTitle" type="String" xid="column2"/>  
      <column label="图片" name="fImg" type="String" xid="column3"/>  
      <column label="价格" name="fPrice" type="Float" xid="column4"/>  
      <column label="邮费" name="fPostage" type="String" xid="column6"/>  
      <column label="月销量" name="fRecord" type="Integer" xid="column7"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   <div class="x-panel-top" xid="top2">
	   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBarHome" title="爱我家" style="background-color:#cccccc;">
	    <div class="x-titlebar-left" xid="div6"></div>
	    <div class="x-titlebar-title" xid="div1">爱我家</div>
	    <div class="x-titlebar-right reverse" xid="div5">
	     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" xid="menuBtn" icon="fa fa-bars" style="width:44px;height:44px;" onClick="menuBtnClick">
	      <i xid="i8" class="icon-navicon"></i>
	      <span xid="span8"></span>
	     </a> 
	    </div> 
	   </div>
   </div>
   <div class="x-panel-content x-full" xid="content1" style="background-color:#e7e8ea;">
   	<div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView" onPullDown="scrollViewPullDown">
      <div class="x-content-center x-pull-down container" xid="div16">
       <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i9"></i>
       <span class="x-pull-down-label" xid="span17">下拉刷新...</span>
      </div> 
      <div class="x-scroll-content" xid="div17">
       <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel1">
        <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel" xid="carousel1" auto="true" interval="4">
         <ol class="carousel-indicators" xid="ol1"></ol>
         <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg" routable="false">
          <div class="x-contents-content" xid="content2">
           <img alt="" xid="image13" bind-click="openPageClick" class="tb-img1" pagename="./detail.w" align="middle"></img>
          </div> 
         </div> 
        </div> 
       </div> 
       <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel2">
        <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row7" style="background-color:#e7e8ea;">
         <div class="col col-md-1" xid="col12"></div>
         <div class="col col-md-10" xid="col13">
          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row6">
           <div class="col col-xs-4" xid="col7">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="./agent/agentmain.w" xid="div2">
             <img src="./main/img/icon-menu-1.png" alt="" xid="image4" class="img-responsive center-block"></img>
             <span xid="span2">代办业务</span>
            </div> 
           </div> 
           <div class="col col-xs-4" xid="col10">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="./service/lifeService.w" xid="div3">
             <img src="./main/img/icon-menu-2.png" alt="" xid="image1" class="img-responsive center-block"></img>
             <span xid="span9">生活服务</span>
            </div> 
           </div> 
           <div class="col col-xs-4" xid="col11">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="./service/homeService.w" xid="div4">
             <img src="./main/img/icon-menu-3.png" alt="" xid="image2" class="img-responsive center-block"></img>
             <span xid="span10">居家服务</span>
            </div> 
           </div> 
          </div> 
          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row8">
           <div class="col col-xs-4" xid="col15">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="./service/relexService.w" xid="div7">
             <img alt="" xid="image8" src="./main/img/icon-menu-4.png" class="img-responsive center-block"></img>
             <span xid="span11">休闲服务</span>
            </div> 
           </div> 
           <div class="col col-xs-4" xid="col16">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="" xid="div8">
             <img alt="" xid="image9" src="./main/img/icon-menu-5.png" class="img-responsive center-block"></img>
             <span xid="span12">出行服务</span>
            </div> 
           </div> 
           <div class="col col-xs-4" xid="col17">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="" xid="div9">
             <img alt="" xid="image3" src="./main/img/icon-menu-6.png" class="img-responsive center-block"></img>
             <span xid="span19">商务服务</span>
            </div> 
           </div> 
          </div> 
          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row9">
           <div class="col col-xs-4" xid="col18">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="" xid="div10">
             <img alt="" xid="image1" src="./main/img/icon-menu-7.png" class="img-responsive center-block"></img>
             <span xid="span20">最新消息</span>
            </div> 
           </div> 
           <div class="col col-xs-4" xid="col19">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="./profile.w" xid="div11">
             <img alt="" xid="image2" src="./main/img/icon-menu-8.png" class="img-responsive center-block"></img>
             <span xid="span10">个人中心</span>
            </div> 
           </div> 
           <div class="col col-xs-4" xid="col20">
            <div class="text-center menu-icon" bind-click="openPageClick" pagename="./profile.w" xid="div12">
             <img alt="" xid="image8" src="./main/img/icon-menu-9.png" class="img-responsive center-block"></img>
             <span xid="span11">系统设置</span>
            </div> 
           </div> 
          </div> 
         </div> 
        </div>
     </div>
  	</div>  
  </div></div>
   </div>
   <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="right-bottom" xid="popShort" opacity="0.1" anchor="menuBtn">
   <div class="x-popMenu-overlay" xid="div13"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu1"><li class="x-menu-item" xid="item1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="购物车" xid="button1" bind-click="button1Click">
    <i xid="i1" class="icon-ios7-cart-outline"></i>
    <span xid="span3">购物车</span></a> </li>
  <li class="x-menu-item" xid="item2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="待确认订单" xid="button2" onClick="button2Click">
    <i xid="i2" class="icon-android-sort"></i>
    <span xid="span4">待确认订单</span></a> </li></ul></div><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons" /> 
  </resource>
</div>