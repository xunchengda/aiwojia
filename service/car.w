<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:404px;left:57px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="type" idColumn="type">
  <column name="type" type="String" xid="xid2"></column><data xid="default1">[{&quot;type&quot;:&quot;普通型&quot;},{&quot;type&quot;:&quot;豪华型&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="start" idColumn="address"><column name="address" type="String" xid="xid3"></column>
  <data xid="default2">[{&quot;address&quot;:&quot;高新嘉园&quot;},{&quot;address&quot;:&quot;高实馨城&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="hour" idColumn="id"><column name="id" type="Integer" xid="xid1"></column>
  <column name="hour" type="String" xid="xid4"></column>
  <column name="value" type="Integer" xid="xid6"></column>
  <data xid="default3">[{&quot;id&quot;:1,&quot;hour&quot;:&quot;7点&quot;,&quot;value&quot;:7},{&quot;id&quot;:2,&quot;hour&quot;:&quot;8点&quot;,&quot;value&quot;:8},{&quot;id&quot;:3,&quot;hour&quot;:&quot;9点&quot;,&quot;value&quot;:9},{&quot;id&quot;:4,&quot;hour&quot;:&quot;10点&quot;,&quot;value&quot;:10},{&quot;id&quot;:5,&quot;hour&quot;:&quot;11点&quot;,&quot;value&quot;:11},{&quot;id&quot;:6,&quot;hour&quot;:&quot;12点&quot;,&quot;value&quot;:12},{&quot;id&quot;:7,&quot;hour&quot;:&quot;13点&quot;,&quot;value&quot;:13},{&quot;id&quot;:8,&quot;hour&quot;:&quot;14点&quot;,&quot;value&quot;:14},{&quot;id&quot;:9,&quot;hour&quot;:&quot;15点&quot;,&quot;value&quot;:15},{&quot;id&quot;:10,&quot;hour&quot;:&quot;16点&quot;,&quot;value&quot;:16},{&quot;id&quot;:11,&quot;hour&quot;:&quot;17点&quot;,&quot;value&quot;:17},{&quot;id&quot;:12,&quot;hour&quot;:&quot;18点&quot;,&quot;value&quot;:18},{&quot;id&quot;:13,&quot;hour&quot;:&quot;19点&quot;,&quot;value&quot;:19},{&quot;id&quot;:14,&quot;hour&quot;:&quot;20点&quot;,&quot;value&quot;:20},{&quot;id&quot;:15,&quot;hour&quot;:&quot;21点&quot;,&quot;value&quot;:21}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="date" idColumn="date"><column name="date" type="String" xid="xid5"></column>
  <data xid="default4">[{&quot;date&quot;:&quot;明天&quot;},{&quot;date&quot;:&quot;今天&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="minute" idColumn="id"><column name="id" type="Integer" xid="xid7"></column>
  <column name="minute" type="String" xid="xid8"></column>
  <column name="value" type="Integer" xid="xid9"></column>
  <data xid="default5">[{&quot;id&quot;:1,&quot;minute&quot;:&quot;00分&quot;,&quot;value&quot;:0},{&quot;id&quot;:2,&quot;minute&quot;:&quot;30分&quot;,&quot;value&quot;:30}]</data></div></div>  
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
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row6">
   <div class="x-col x-col-20" xid="col12"><span xid="span8"><![CDATA[选择车型]]></span></div>
   <div class="x-col" xid="col14">
  <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="r_pt" label="普通型" name="type" checked="true" checkedValue="1"></span><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="r_hh" name="type" label="豪华型" checked="false"></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row7">
   <div class="x-col x-col-20" xid="col15"><span xid="span9"><![CDATA[出发地点]]></span></div>
   <div class="x-col" xid="col17"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="r_gx" label="高新嘉园" name="start" checked="true"></span>
  <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="r_gs" name="start" label="高实馨城" checked="false"></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row8">
   <div class="x-col x-col-20" xid="col19">
    <span xid="span10"><![CDATA[用车时间]]></span></div> 
   <div class="x-col" xid="col18">
    <select component="$UI/system/components/justep/select/select" class="form-control" xid="s_date" bind-options="date" bind-optionsValue="date" bind-optionsLabel="date" bind-value=' $model.date.val("date")' onChange="dateChange"></select></div> 
  <div class="x-col" xid="col20"><select component="$UI/system/components/justep/select/select" class="form-control" xid="s_hour" bind-options="hour" bind-optionsValue="value" bind-optionsLabel="hour" bind-value=' $model.hour.val("value")'></select>
  </div>
  <div class="x-col" xid="col21"><select component="$UI/system/components/justep/select/select" class="form-control" xid="s_minute" bind-options="minute" bind-optionsValue="value" bind-optionsLabel="minute" bind-value=' $model.minute.val("value")'></select></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row9">
   
   <div class="x-col x-col-20" xid="col22"><span xid="span11"><![CDATA[目的地]]></span></div><div class="x-col" xid="col23"><input component="$UI/system/components/justep/input/input" class="form-control" xid="end" placeHolder="请输入您的目的地" onBlur="endBlur"></input></div>
   </div></div>
   </div></div>
   <div class="x-panel-bottom" xid="bottom2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="button1" style="position:absolute;bottom:0px;" onClick="confirmClick">
   <i xid="i2"></i>
   <span xid="span3">确定</span></a></div></div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="msg"></span></div>