<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="navData"><master xid="default1"></master></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="生活服务"
        class="x-titlebar" style="color:#4C4C4C;background-color:#CCC;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="fa fa-angle-left fa-fw" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="fa fa-angle-left fa-fw"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">生活服务</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="" _xid="C74BEE5908700001204A18305D50A080"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel2"> 
            <div class="x-panel-top" xid="navMenuTop"> 
              <div component="$UI/system/components/justep/row/row" class="x-row x-nav"
                xid="row5"> 
                <div class="x-col" xid=""> 
                  <div class="x-navbox"> 
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="navList" data="navData" dataItemAlias="navRow"
                      bind-click="navLiClick"> 
                      <ul class="x-list-template" xid="listTemplateUl2"> 
                        <li xid="li2" class="btn btn-link" bind-css="{'current':navRow.val('fID')==$model.navData.val('fID')}"> 
                          <span bind-text="ref('fName')"><![CDATA[]]></span> 
                        </li> 
                      </ul> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-panel-content" xid="content1">内容</div>  
            <div class="x-panel-bottom" xid="bottom1"/> 
          </div> 
        </div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span2">加载更多...</span> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons"/> 
  </resource> 
</div>
