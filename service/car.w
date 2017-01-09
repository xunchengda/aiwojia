<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:597px;left:4px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="type" idColumn="type"><column name="type" type="String" xid="xid2"></column>
  <data xid="default1">[{&quot;type&quot;:&quot;普通型&quot;},{&quot;type&quot;:&quot;豪华型&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="start" idColumn="address"><column name="address" type="String" xid="xid3"></column>
  <data xid="default2">[{&quot;address&quot;:&quot;高新嘉园&quot;},{&quot;address&quot;:&quot;高实馨城&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="time" idColumn="time"><column name="time" type="String" xid="xid4"></column>
  <data xid="default3">[{&quot;time&quot;:&quot;8:00&quot;},{&quot;time&quot;:&quot;9:00&quot;},{&quot;time&quot;:&quot;10:00&quot;},{&quot;time&quot;:&quot;11:00&quot;},{&quot;time&quot;:&quot;12:00&quot;},{&quot;time&quot;:&quot;13:00&quot;},{&quot;time&quot;:&quot;14:00&quot;},{&quot;time&quot;:&quot;15:00&quot;},{&quot;time&quot;:&quot;16:00&quot;},{&quot;time&quot;:&quot;17:00&quot;},{&quot;time&quot;:&quot;18:00&quot;},{&quot;time&quot;:&quot;19:00&quot;},{&quot;time&quot;:&quot;20:00&quot;},{&quot;time&quot;:&quot;21:00&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="date" idColumn="date"><column name="date" type="String" xid="xid5"></column>
  <data xid="default4">[{&quot;date&quot;:&quot;今天&quot;},{&quot;date&quot;:&quot;明天&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="出行服务"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">出行服务</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-content  x-scroll-view" xid="content3" _xid="C75ECC1B03E00001A2AE1B0414C5151E" style="top: 0px; bottom: 0px; margin:15px"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[选择车型]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-ref='$model.type.ref("type")' bind-options="type" bind-optionsValue="type" bind-optionsLabel="type"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[选择出发地点]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="s_start" bind-options="start" bind-optionsValue="address" bind-optionsLabel="address" bind-ref='$model.start.ref("address")'></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5"><![CDATA[选择用车日期]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select4" bind-options="date" bind-optionsValue="date" bind-optionsLabel="date" bind-ref='$model.date.ref("date")'></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="s"><![CDATA[选择用车时间]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="s_time" bind-optionsValue="time" bind-optionsLabel="time" bind-options="time" bind-ref='$model.time.ref("time")'></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" xid="label7"><![CDATA[目的地]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="s_end"></input></div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
   <div class="x-panel-bottom" xid="bottom2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="button1">
   <i xid="i2"></i>
   <span xid="span3">确定</span></a></div></div></div>
  </div> 
</div>