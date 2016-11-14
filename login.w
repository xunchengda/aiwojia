<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="login-main" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:13px;top:202px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="logindata" idColumn="name"><column name="name" type="String" xid="xid1"></column>
  <column name="password" type="String" xid="xid2"></column>
  <column name="id" type="Integer" xid="xid3"></column>
  <data xid="default1">[{&quot;id&quot;:1}]</data>
  <rule xid="rule1">
   <col name="name" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default2">true</expr></required> </col> 
   <col name="password" xid="ruleCol2">
    <required xid="required2">
     <expr xid="default3">true</expr></required> </col> </rule></div></div>  
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full login-window-panel"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" visible="false"></div>
    <div class="x-panel-content  x-cards container" xid="content1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="rowT" style="height:10%;"></div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="logoRow">
	  	<div class="x-col" xid="col1"></div>
	   	<div class="x-col" xid="col2">
	   		<img src="$UI/mine/aiwojia/main/img/logo.png" alt="" xid="logo" height="100%" style="width:100%;"></img>
   		</div>
	  	<div class="x-col" xid="col3"></div>
	</div>
   	<div component="$UI/system/components/justep/row/row" class="x-row" xid="rowB" style="height:10%;"></div>
   	<div xid="div1" class="list-group"> 
        <div class="list-group-item"> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-10" xid="col7"><span class="input-group-addon" xid="span2"> 
              <i class="fa fa-user fa-fw" /> 
            </span></div>
   <div class="x-col" xid="col8"><input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="nameInput" placeHolder="用户名/手机号" bind-ref='$model.logindata.ref("name")'/></div>
   </div></div>  
        <div class="list-group-item" xid="div6"> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-10" xid="col10"><span class="input-group-addon" xid="span3"> 
              <i class="fa fa-lock fa-fw" xid="i3" /> 
            </span></div>
   <div class="x-col" xid="col11"><input component="$UI/system/components/justep/input/password" class="form-control x-inputText" xid="passwordInput" placeHolder="密码" bind-ref='$model.logindata.ref("password")'/></div>
   </div></div> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn x-black btn-lg btn-only-label btn-block text-info list-group" label="登  录" xid="loginBtn" style="background-color:#ee9c13;color:#4C4C4C;border-width:0px 0px 0px 0px;" onClick="btnLoginClick"> 
        <i xid="i4" />  
        <span xid="span4">登  录</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="忘记密码？" xid="forgetPwd" style="float:right;color:#666666;">
   <i xid="i2"></i>
   <span xid="span5">忘记密码？</span></a>
  </div><div class="x-panel-bottom" xid="bottom1" visible="false"></div> 
  </div> 
<resource xid="resource2"><require xid="require2" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons"></require></resource>
  </div>