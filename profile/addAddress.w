<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:517px;left:23px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="address_id" autoNew="false">
   <column label="ID" name="address_id" type="Integer" xid="xid1"></column>
  <column label="姓名" name="true_name" type="String" xid="xid2"></column>
  <column label="手机" name="mob_phone" type="String" xid="xid9"></column>
  <column label="地址" name="address" type="String" xid="xid10"></column>
  <column label="member_id" name="member_id" type="Integer" xid="xid11"></column>
  <column label="默认" name="is_default" type="Integer" xid="xid12"></column>
  <rule xid="rule1">
   <col name="true_name" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default1">true</expr></required> </col> 
   <col name="address" xid="ruleCol2">
    <required xid="required2">
     <expr xid="default2">true</expr></required> </col> 
   <col name="mob_phone" xid="ruleCol3">
    <required xid="required3">
     <expr xid="default3">true</expr></required> </col> </rule>
  <column name="id" type="Integer" xid="xid3"></column>
  <data xid="default4">[{&quot;address_id&quot;:{&quot;value&quot;:&quot;&quot;},&quot;id&quot;:1}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="添加收货地址"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">添加收货地址</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[收货人：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="receiverInput" bind-ref='$model.addressData.ref("true_name")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[手机号码：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="mobileInput" bind-ref='$model.addressData.ref("mob_phone")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[详细地址：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="addressInput" bind-ref='$model.addressData.ref("address")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[设为默认地址：]]></label>
   <span component="$UI/system/components/justep/button/toggle" class="x-toggle x-edit" xid="defaultInput" ON="是" OFF="否" checkedValue="1" uncheckedValue="0" value="0" bind-ref='$model.addressData.ref("is_default")'></span></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="button1" icon="glyphicon glyphicon-floppy-disk" onClick="saveBtnClick">
   <i xid="i1" class="glyphicon glyphicon-floppy-disk"></i>
   <span xid="span1">保存</span></a></div></div></div>
  </div> 
</div>