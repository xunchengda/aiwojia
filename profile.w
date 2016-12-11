<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:499px;left:75px;" onLoad="modelLoad" onActive="modelActive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="member_id" onCustomRefresh="userDataCustomRefresh"><column name="member_id" type="Integer" xid="xid1"></column>
  <column label="真实姓名" name="member_truename" type="String" xid="xid2"></column>
  <column label="所在单位" name="member_department" type="String" xid="xid3"></column>
  <column label="学历" name="member_degree" type="String" xid="xid4"></column>
  <column label="证件号码" name="member_idno" type="String" xid="xid5"></column>
  <column label="手机号码" name="member_mobile" type="String" xid="xid6"></column>
  <column name="member_name" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="id" onCustomRefresh="orderDataCustomRefresh"><column name="id" type="Integer" xid="xid8"></column>
  <column name="order_wait" type="Integer" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-top" xid="top2"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
          xid="titleBar1" style="color:#4C4C4C;background-color:#CCC;" title="用户信息"> 
          <div class="x-titlebar-left" xid=""> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              xid="back" icon="fa fa-angle-left fa-fw" style="padding: 5px;"> 
              <i xid="i3" class="fa fa-angle-left fa-fw"/>  
              <span xid="span3"/> 
            </a> 
          </div>  
          <div class="x-titlebar-title" xid="title1">用户信息</div>  
          <div class="x-titlebar-right reverse" xid=""/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row"
        xid="avatarRow"> 
        <div class="x-col" xid="col1">
  <ul xid="ul4" class="list-group" style="margin:0;">
   <li xid="li2" class="center-block list-group-item" bind-click="showAddress">
    
    
  <i class="fa fa-user" xid="i9"></i><span xid="span1" bind-text="'当前用户：' + $model.userData.val('member_name') + &quot;   &quot; + $model.userData.val('member_mobile')"><![CDATA[]]></span></li> 
   </ul></div>  
        </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white; margin-top:10px;"> 
        <div class="x-col" xid="col5" style="padding: 0 25px 10px 25px;"> 
          <h4 xid="myOrderTitle" class="page-header" style="color: #666; margin:15px 0;"><![CDATA[我的订单]]></h4>  
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left"
              label="待收货" xid="button2" icon="fa fa-truck fa-fw" style="color:#666666;" onClick="btnOrderWaitClick"> 
              <i xid="i4" class="fa fa-truck fa-fw"/>  
              <span xid="span4">待收货</span><div xid="cartBadge" class="badge" style="position:absolute; top:3px;background-color:red"></div> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-icon-left"
              label="全部订单" xid="button3" icon="fa fa-list-alt" style="color:#666666;"> 
              <i xid="i6" class="fa fa-list-alt"/>  
              <span xid="span6">全部订单</span> 
            </a> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="background-color:white; margin-top:10px; padding:0;"> 
        <div class="x-col" xid="col8" style="padding: 0;"> 
          <ul xid="ul1" class="list-group" style="margin:0;"> 
            <li xid="" class="center-block list-group-item" bind-click="showAddress"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="" icon="icon-ios7-arrow-right" onClick="showAddress" style="padding-top:0px"> 
                <i xid="" class="icon-ios7-arrow-right"/>  
                <span xid=""/> 
              </a>  
              <i class="fa fa-map-marker fa-fw"/>  
              <span xid="span13"><![CDATA[我的收货地址]]></span> 
            </li>  
            <li xid="" class="list-group-item" bind-click="userInfoClick"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="" icon="icon-ios7-arrow-right" style="padding-top:0px"> 
                <i xid="" class="icon-ios7-arrow-right"/>  
                <span xid=""/> 
              </a>  
              <i class="fa fa-credit-card fa-fw"/>  
              <span xid="span14"><![CDATA[我的信息]]></span> 
            </li>  
            </ul> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="background-color:white; margin-top:10px; padding:0;"> 
        <div class="x-col" xid="col4" style="padding: 0;"> 
          <ul xid="ul2" class="list-group" style="margin:0;"> 
            <li xid="li4" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button7" icon="icon-ios7-arrow-right" style="padding-top:0px"> 
                <i xid="i15" class="icon-ios7-arrow-right"/>  
                <span xid="span25"/> 
              </a>  
              <i class="fa fa-comments fa-fw" xid="i16"/>  
              <span xid="span18"><![CDATA[爱我家客服]]></span> 
            </li>  
            <li xid="li1" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button4" icon="icon-ios7-arrow-right" style="padding-top:0px"> 
                <i xid="i12" class="icon-ios7-arrow-right"/>  
                <span xid="span22"/> 
              </a>  
              <i class="fa fa-users fa-fw" xid="i7"/>  
              <span xid="span23"><![CDATA[关于爱我家]]></span> 
            </li> 
          </ul> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="background-color:white; margin-top:10px; padding:0;"> 
        <div class="x-col" xid="col6" style="padding: 0;"> 
          <ul xid="ul3" class="list-group" style="margin:0;"> 
            <li xid="li5" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button10" icon="icon-ios7-arrow-right" style="padding-top:0px"> 
                <i xid="i17" class="icon-ios7-arrow-right"/>  
                <span xid="span28"/> 
              </a>  
              <i class="fa fa-cog fa-fw" xid="i20"/>  
              <span xid="span29"><![CDATA[设置]]></span> 
            </li> 
          </ul> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" xid="row5" class="x-row"> 
        <div class="x-col" xid="col9"> 
          <a component="$UI/system/components/justep/button/button" class="btn x-red btn-only-label btn-block"
            label="退  出" xid="button9" onClick="btnLogoutClick"> 
            <i xid="i18"/>  
            <span xid="span26">退 出</span> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom2"/> 
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons"></require></resource></div>
