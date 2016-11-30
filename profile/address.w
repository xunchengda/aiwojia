<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:277px;left:41px;" onActive="onPageActive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="address_id" onCustomRefresh="addressDataCustomRefresh"><column label="ID" name="address_id" type="Integer" xid="xid1"></column>
  <column label="姓名" name="true_name" type="String" xid="xid2"></column>
  <column label="手机" name="mob_phone" type="String" xid="xid9"></column>
  <column label="地址" name="address" type="String" xid="xid10"></column>
  <column label="praise" name="member_id" type="Integer" xid="xid11"></column>
  <column label="默认" name="is_default" type="Integer" xid="xid12"></column>
  <column label="commentname" name="commentName" type="String" xid="xid13"></column>
  <column label="commentconyent" name="commentContent" type="String" xid="xid14"></column>
  <column label="state" name="state" type="String" xid="xid15"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
   <i class="icon-chevron-left" xid="i4"></i>
   <span xid="span4"></span></a></div>
   <div class="x-titlebar-title" xid="title1">
    <span xid="span1"><![CDATA[收货地址管理]]></span></div> 
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C6F5C7749DD00001559019B51AB0AE00" style="bottom: 54px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div6">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div7"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="addressData" dataItemAlias="addressRow">
   <ul class="x-list-template x-min-height" xid="listTemplateUl1">
    <li xid="li2" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-33 x-col-30" xid="col2"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref="ref('true_name')" bind-text="ref('true_name')"></div></div>
   <div class="x-col" xid="col3"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref="ref('mob_phone')" bind-text="ref('mob_phone')"></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref="ref('address')" bind-text="ref('address')"></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-50" xid="col8">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col x-col-20" xid="col11"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" checkedValue="1" uncheckedValue="0" bind-ref="ref('is_default')"></span></div>
   <div class="x-col" xid="col12"><label xid="label1"><![CDATA[设为默认]]></label></div>
   </div></div>
   <div class="x-col" xid="col9"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="编辑" xid="button1" icon="glyphicon glyphicon-edit">
   <i xid="i1" class="glyphicon glyphicon-edit"></i>
   <span xid="span2">编辑</span></a></div>
   <div class="x-col" xid="col10"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="删除" xid="button2" icon="glyphicon glyphicon-trash">
   <i xid="i2" class="glyphicon glyphicon-trash"></i>
   <span xid="span3">删除</span></a></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span10">加载更多...</span></div> </div></div>
   <div class="x-panel-bottom" xid="bottom1" height="54"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left btn-block" label="添加地址" xid="newAddressBtn" icon="linear linear-arrowleftcircle" onClick="addBtnClick">
   <i xid="i5" class="linear linear-arrowleftcircle"></i>
   <span xid="span7">添加地址</span></a></div></div></div>