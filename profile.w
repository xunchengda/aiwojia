<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:638px;left:12px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-top" xid="top2"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
          xid="titleBar1" style="color:#4C4C4C;background-color:#CCC;"> 
          <div class="x-titlebar-left" xid=""> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              xid="back" icon="fa fa-angle-left fa-fw" style="padding: 5px;"> 
              <i xid="i3" class="fa fa-angle-left fa-fw"/>  
              <span xid="span3"/> 
            </a> 
          </div>  
          <div class="x-titlebar-title" xid="title1"/>  
          <div class="x-titlebar-right reverse" xid=""/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row avatar-row"
        xid="avatarRow" style="height:40%;max-height:480px;background-color:#CCC;"> 
        <div class="x-col" xid="col1"/>  
        <div class="x-col" xid="col2"> 
          <div xid="avatarDiv" style="width: 90%; max-width:200px; height:100%; margin: 0 auto;"> 
            <img src="$UI/mine/aiwojia/main/img/avatar.jpg" alt="" xid="avatarImg"
              style="width: 100%;" class="img-circle img-thumbnail"/>  
            <h5 xid="usernameLabel" style="text-align:center;color:#4C4C4C;"><![CDATA[李四]]></h5>  
            <h5 xid="growupPointsLabel" style="text-align:center;color:#4C4C4C;"><![CDATA[我的成长值：720]]> </h5>  
            <h5 xid="userPointsLabel" style="text-align:center;color:#4C4C4C;"><![CDATA[我的积分：50]]></h5> 
          </div> 
        </div>  
        <div class="x-col" xid="col3"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white; margin-top:10px;"> 
        <div class="x-col" xid="col5" style="padding: 0 25px 10px 25px;"> 
          <h4 xid="myOrderTitle" class="page-header" style="color: #666; margin:15px 0;"><![CDATA[我的订单]]></h4>  
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top"
              label="待付款" xid="button1" icon="fa fa-credit-card fa-fw" style="color:#666666;"> 
              <i xid="i2" class="fa fa-credit-card fa-fw"/>  
              <span xid="span2">待付款</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top"
              label="待收货" xid="button2" icon="fa fa-truck fa-fw" style="color:#666666;"> 
              <i xid="i4" class="fa fa-truck fa-fw"/>  
              <span xid="span4">待收货</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-icon-top"
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
            <li xid="" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="" icon="icon-ios7-arrow-right" onClick="showAddress"> 
                <i xid="" class="icon-ios7-arrow-right"/>  
                <span xid=""/> 
              </a>  
              <i class="fa fa-map-marker fa-fw"/>  
              <span xid="span13"><![CDATA[我的收货地址]]></span> 
            </li>  
            <li xid="" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="" icon="icon-ios7-arrow-right"> 
                <i xid="" class="icon-ios7-arrow-right"/>  
                <span xid=""/> 
              </a>  
              <i class="fa fa-credit-card fa-fw"/>  
              <span xid="span14"><![CDATA[我的卡券]]></span> 
            </li>  
            <li xid="li3" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button5" icon="icon-ios7-arrow-right"> 
                <i xid="i10" class="icon-ios7-arrow-right"/>  
                <span xid="span16"/> 
              </a>  
              <i class="fa fa-user fa-fw" xid="i11"/>  
              <span xid="span15"><![CDATA[我的会员]]></span> 
            </li> 
          </ul> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="background-color:white; margin-top:10px; padding:0;"> 
        <div class="x-col" xid="col4" style="padding: 0;"> 
          <ul xid="ul2" class="list-group" style="margin:0;"> 
            <li xid="li2" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button6" icon="icon-ios7-arrow-right"> 
                <i xid="i13" class="icon-ios7-arrow-right"/>  
                <span xid="span24"/> 
              </a>  
              <i class="fa fa-lock fa-fw" xid="i14"/>  
              <span xid="span21"><![CDATA[账户与安全]]></span> 
            </li>  
            <li xid="li4" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button7" icon="icon-ios7-arrow-right"> 
                <i xid="i15" class="icon-ios7-arrow-right"/>  
                <span xid="span25"/> 
              </a>  
              <i class="fa fa-comments fa-fw" xid="i16"/>  
              <span xid="span18"><![CDATA[爱我家客服]]></span> 
            </li>  
            <li xid="li1" class="list-group-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
                label="button" xid="button4" icon="icon-ios7-arrow-right"> 
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
                label="button" xid="button10" icon="icon-ios7-arrow-right"> 
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
