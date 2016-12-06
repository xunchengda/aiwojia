<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:517px;left:23px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="degreeData" idColumn="degree"><column name="degree" type="String" xid="xid8"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="member_id" onCustomRefresh="userDataCustomRefresh">
   <column name="member_id" type="Integer" xid="column1"></column>
  <column label="真实姓名" name="member_truename" type="String" xid="column2"></column>
  <column label="所在单位" name="member_department" type="String" xid="column3"></column>
  <column label="学历" name="member_degree" type="String" xid="xid4"></column>
  <column label="证件号码" name="member_idno" type="String" xid="xid5"></column>
  <column label="手机号码" name="member_mobile" type="String" xid="xid6"></column>
  <column label="登陆名" name="member_name" type="String" xid="xid7"></column>
  <rule xid="rule1">
   <col name="member_mobile" xid="ruleCol1">
    <readonly xid="readonly1">
     <expr xid="default1">true</expr></readonly> </col> 
   <col name="member_name" xid="ruleCol2">
    <readonly xid="readonly2">
     <expr xid="default2">true</expr></readonly> </col> </rule></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="编辑用户信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">编辑用户信息</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[登录名：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameInput" bind-ref='$model.userData.ref("member_name")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[手机号码：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="mobileInput" bind-ref='$model.userData.ref("member_mobile")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[真实姓名：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="truenameInput" bind-ref='$model.userData.ref("member_truename")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[证件号码：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.userData.ref("member_idno")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5"><![CDATA[所在单位：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.userData.ref("member_department")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6"><![CDATA[学历：]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-ref='$model.userData.ref("member_degree")' bind-options="degreeData" bind-optionsCaption="选择学历" bind-optionsValue="degree" bind-optionsLabel="degree"></select></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="button1" icon="glyphicon glyphicon-floppy-disk" onClick="saveBtnClick">
   <i xid="i1" class="glyphicon glyphicon-floppy-disk"></i>
   <span xid="span1">保存</span></a></div></div></div>
  </div> 
</div>