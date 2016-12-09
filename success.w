<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:255px;left:272px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentAddressData" idColumn="address_id">
   <column label="ID" name="address_id" type="Integer" xid="column7"></column>
   <column label="姓名" name="true_name" type="String" xid="column5"></column>
   <column label="手机" name="mob_phone" type="String" xid="column3"></column>
   <column label="地址" name="address" type="String" xid="column2"></column>
   <column label="praise" name="member_id" type="Integer" xid="column1"></column>
   <column label="默认" name="is_default" type="Integer" xid="column4"></column>
   <column label="commentname" name="commentName" type="String" xid="column6"></column>
   <column label="commentconyent" name="commentContent" type="String" xid="column8"></column>
   <column label="state" name="state" type="String" xid="column9"></column></div>
  
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card" xid="panel1">
   <div class="x-panel-top" xid="top1" style="width:100%;">
    
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="div19"></div>
   <div class="x-titlebar-title" xid="div20"></div>
   <div class="x-titlebar-right reverse" xid="div21"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" label="完成" xid="mainBtn" icon="icon-chevron-right" onClick="mainBtnClick">
      <i xid="i1" class="icon-chevron-right"></i>
      <span xid="span1">完成</span></a></div></div></div> 
   <div class="x-panel-content" xid="content1">
    
    <div class="panel-body media"><div class="media-left media-middle" xid="div5">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" icon="icon-android-checkmark">
       <i xid="i3" class="icon-android-checkmark  text-success"></i>
       <span xid="span7"></span></a> </div><div class="media-body" xid="div7">
      <h4 class="text-success" xid="h41"><![CDATA[购物成功]]></h4> 
      <h5 class="text-muted" xid="h51" style="width:100%;" bind-text='"收货地址：" + $model.currentAddressData.val("address")'><![CDATA[]]></h5>
      <h5 class="text-muted" xid="h53" bind-text="&quot;收 货 人：&quot; + $model.currentAddressData.val(&quot;true_name&quot;) + $model.currentAddressData.val('mob_phone')"></h5><h5 class="text-warning" xid="h52"><![CDATA[（请注意查收）]]></h5>
  </div></div></div> 
   </div></div>