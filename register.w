<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="login-main" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:533px;left:30px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="regdata" idColumn="id" autoNew="true"><column label="id" name="id" type="Integer" xid="xid1"></column>
  <column label="用户名" name="name" type="String" xid="xid2"></column>
  <column label="手机号" name="mobile" type="String" xid="xid3"></column>
  <column label="身份证号" name="idno" type="String" xid="xid4"></column>
  <column label="验证码" name="code" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;id&quot;:1}]</data>
  <column label="密码" name="password" type="String" xid="xid6"></column>
  <rule xid="rule1">
   <col name="name" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default2">true</expr></required> 
    <constraint xid="constraint1">
     <expr xid="default3"></expr></constraint> </col> 
   <col name="id" xid="ruleCol2">
    <constraint xid="constraint2">
     <expr xid="default4"></expr></constraint> </col> 
   <col name="mobile" xid="ruleCol3">
    <required xid="required2">
     <expr xid="default5">true</expr></required> 
    <constraint xid="constraint3">
     <message xid="default8"></message>
     <expr xid="default11">$model.checkMobile($row.val('mobile'))</expr></constraint> </col> 
   <col name="idno" xid="ruleCol4">
    <required xid="required3">
     <expr xid="default6">true</expr></required> 
    <constraint xid="constraint4">
     <message xid="default9"></message>
     <expr xid="default12">$model.checkID($row.val('idno'))</expr></constraint> </col> 
   <col name="code" xid="ruleCol5">
    <required xid="required4">
     <expr xid="default7">true</expr></required> </col> 
   <col name="password" xid="ruleCol6">
    <required xid="required5">
     <expr xid="default10">true</expr></required> </col> </rule></div></div>  
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full login-window-panel"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" visible="true">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="会员注册" style="color:#4C4C4C;background-color:#CCC;">
	   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="back" icon="fa fa-angle-left fa-fw">
	   <i xid="i5" class="fa fa-angle-left fa-fw"></i>
	   <span xid="span6"></span></a></div>
	   <div class="x-titlebar-title" xid="title1">会员注册</div>
	   <div class="x-titlebar-right reverse" xid="right1"></div>
   </div>
   </div>
    <div class="x-panel-content  x-cards container" xid="content1"> 
      <div xid="div1" class="list-group"> 
	        <div class="list-group-item"> 
	          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="form-item-icon" xid="col1"><span class="input-group-addon" xid="span2"> 
	              <i class="fa fa-user fa-lg fa-fw" /> 
	            </span></div>
   <div xid="col2" class="x-col"><input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="nameInput" placeHolder="用户名" bind-ref='$model.regdata.ref("name")'/></div>
   </div>
  </div>
	        <div class="list-group-item" xid=""> 
	          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="form-item-icon" xid="col4"><span class="input-group-addon" xid=""> 
	              <i class="fa fa-phone fa-lg fa-fw" xid="" /> 
	            </span></div>
   <div class="x-col" xid="col5"><input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="mobileInput" placeHolder="手机号" bind-ref='$model.regdata.ref("mobile")'/></div>
   </div></div>    
	        <div class="list-group-item" xid=""> 
	          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="form-item-icon" xid="col7"><span class="input-group-addon" xid=""> 
	              <i class="fa fa-id-card fa-lg fa-fw" xid="" /> 
	            </span></div>
   <div class="x-col" xid="col8"><input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="idInput" placeHolder="身份证号" bind-ref='$model.regdata.ref("idno")'/></div>
   </div></div>
	        <div class="list-group-item" xid="div6"> 
	          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="form-item-icon" xid="col10"><span class="input-group-addon" xid="span3"> 
	              <i class="fa fa-lock fa-lg fa-fw" xid="i3" /> 
	            </span></div>
   <div class="x-col" xid="col11"><input component="$UI/system/components/justep/input/password" class="form-control x-inputText" xid="passwordInput" placeHolder="密码" bind-ref='$model.regdata.ref("password")'/></div>
   </div></div> 
	        <div class="list-group-item" xid=""> 
	          <div class="input-group" xid=""> 
	              
	            
	          </div> 
	        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="form-item-icon" xid="col13"><span class="input-group-addon" xid=""> 
	              <i class="fa fa-commenting fa-lg fa-fw" xid="" /> 
	            </span></div>
   <div class="x-col" xid="col14"><input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="codeInput" placeHolder="验证码" style="width:101%;" bind-ref='$model.regdata.ref("code")'/></div>
   <div class="x-col x-col-30" xid="col16"><a component="$UI/system/components/justep/button/button" class="btn x-green btn-default pull-left" label="获取验证码" xid="getSmsBtn" style="line-height:0px;padding: 16px;width:120px;margin-left:10px;float:right;">
	   <i xid="i1"></i>
	   <span xid="span1">获取验证码</span></a></div></div></div>  
	      </div><a component="$UI/system/components/justep/button/button" class="btn x-black btn-lg btn-only-label btn-block text-info list-group" label="注    册" xid="registerBtn" style="background-color:#ee9c13;color:#4C4C4C;border-width:0px 0px 0px 0px;" onClick="btnRegClick"> 
	        <i xid="i4" />  
	        <span xid="span4">注    册</span> 
	      </a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="我有帐号，直接登录" xid="gotoLoginBtn" style="float:right;color:#666666;" onClick="btnLoginClick">
   		  <i xid="i6"></i>
   		  <span xid="span7">我有帐号，直接登录</span></a></div>
  	<div class="x-panel-bottom" xid="bottom1" visible="false"></div> 
  </div> 
<resource xid="resource2"><require xid="require2" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons"></require></resource>
  </div>