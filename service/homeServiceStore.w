<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:445px;left:151px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="shopData" idColumn="store_id" confirmDelete="false" confirmRefresh="false" onCustomRefresh="shopDataCustomRefresh">
   <column label="id" name="store_id" type="Integer" xid="xid9"></column>
   <column label="店名" name="store_name" type="String" xid="xid10"></column>
   <column label="店标" name="img" type="String" xid="xid11"></column>
   <column name="sum" type="Decimal" xid="xid7"></column>
   <column name="count" type="Integer" xid="xid8"></column>
   <column name="chooseAll" type="Integer" xid="xid14"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="88"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-index" title="居家服务商家"> 
        <div class="x-titlebar-left" xid="div1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="搜索" xid="button6" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i6" class="icon-chevron-left"/>  
            <span xid="span6">搜索</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="div20" bind-click="searchBtnClick">居家服务商家</div>  
        <div class="x-titlebar-right reverse" xid="div3"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button10" icon="icon-android-more"> 
            <i xid="i11" class="icon-android-more"/>  
            <span xid="span10"/> 
          </a> 
        </div> 
      </div>  
      </div>  
    <div xid="content" class="x-panel-content tb-trans"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div5">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"></i>
    <span class="x-pull-down-label" xid="span15">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div6">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="shopData" limit="-1" dataItemAlias="shopRow">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="center-block media" bind-click="listClick">
       <div xid="div10" class="media-left">
        <img alt="" xid="image1" class="img-rounded media-object" bind-attr-src='val("img")' style="width:40px;" height="40px"></img></div> 
       <div class="media-body" xid="div14">
        <h5 class="text-black" bind-text="ref('store_name')" xid="h51"></h5>
        </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div7">
    <span class="x-pull-up-label" xid="span16">加载更多...</span></div> </div></div> 
  </div> 
</div>
