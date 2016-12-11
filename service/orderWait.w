<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:135px;top:10px;" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="order_id" confirmDelete="false" confirmRefresh="false" onCustomRefresh="orderDataCustomRefresh">
   <column label="id" name="order_id" type="String" xid="xid9"></column>
  <column label="" name="order_sn" type="Long" xid="xid10"></column>
  <column label="" name="store_id" type="Integer" xid="xid11"></column>
  <column name="store_name" type="String" xid="xid7"></column>
  <column name="goods_amount" type="Decimal" xid="xid8"></column>
  <column name="order_amount" type="Decimal" xid="xid14"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="goodsData" idColumn="rec_id">
   <column name="rec_id" type="Integer" xid="xid17"></column>
  <column name="order_id" type="String" xid="xid27"></column>
  <column label="商品id" name="goods_id" type="Integer" xid="xid18"></column>
  <column label="商品名称" name="goods_name" type="String" xid="xid19"></column>
  <column label="商铺id" name="store_id" type="Integer" xid="xid21"></column>
  <column label="商铺名称" name="store_name" type="String" xid="xid22"></column>
  <column label="商品价格" name="goods_price" type="Decimal" xid="xid24"></column>
  <column label="商铺图片" name="goods_image" type="String" xid="xid25"></column>
  <column name="goods_num" type="Integer" xid="xid3"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="48"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backBtn" icon="icon-chevron-left" onClick="backBtnClick">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span3"></span></a></div>  
        <div class="x-titlebar-title"> 
          <span xid="span1"><![CDATA[待确认收货订单]]></span>  
          </div>  
        <div class="x-titlebar-right reverse"> 
          </div> 
      </div> 
    </div>  
    <div xid="content" class="x-panel-content x-scroll-view x-cards" supportpulldown="true"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView" pullUpLabel=" "> 
        <div class="x-content-center x-pull-down container" xid="div8"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span9">下拉刷新...</span>
        </div>  
        <div class="x-scroll-content" xid="div7"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            data="orderData" limit="-1" xid="orderList" disablePullToRefresh="true" disableInfiniteLoad="true"
            autoLoad="true" dataItemAlias="orderRow"> 
            <ul class="x-list-template x-min-height" xid="listTemplateUl1"
              componentname="$UI/system/components/justep/list/list#listTemplateUl"
              id="undefined_listTemplateUl1"> 
              <li xid="li1" class="panel panel-default x-card tb-box"> 
                <div class="panel-heading">
                  <i xid="i5" class="icon-chevron-right" /> 
                  <span xid="span4" bind-text="ref('store_name')" />
                </div><div class="panel-heading" xid="div3">
   <i xid="i10" class="icon-android-sort"></i><span xid="span2" bind-text="&quot;订单编号：&quot; + val('order_sn')"></span>
  </div>  
                <div component="$UI/system/components/justep/list/list" class="x-list bg-white"
                  data="$model.goodsData" xid="goodsList" disablePullToRefresh="false" disableInfiniteLoad="true" autoLoad="true" limit="-1" filter="$row.val('order_id') == orderRow.val('order_id')"> 
                  <ul class="x-list-template x-min-height" xid="listTemplateUl4"
                    componentname="$UI/system/components/justep/list/list#listTemplateUl"
                    id="undefined_listTemplateUl4"> 
                    <li xid="li4" class="x-min-height tb-goodList" componentname="li(html)"
                      id="undefined_li4"> 
                      <div component="$UI/system/components/justep/row/row" class="x-row">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;"></div><div class="x-col x-col-fixed tb-nopadding" xid="col2"><img src="" alt="" xid="image1" bind-attr-src='$model.getImageUrl(val("goods_image"))' class="tb-img-good" bind-click="listClick"></img></div>
   <div class="x-col  tb-nopadding" xid="col3"><span bind-text="ref('goods_name')" class="x-flex text-black h5 tb-nomargin" xid="span26"></span>
  <div class="text-muted" xid="div5">
   <span xid="span22" class="text-danger">￥</span>
   <span xid="span28" bind-text="ref('goods_price')" class="h4 text-danger"></span>
   <span xid="span19"><![CDATA[X]]></span>
   <span xid="span24" bind-text="ref('goods_num')"></span></div>
  </div></div>
  </li> 
                  </ul> 
                </div> 
              <div component="$UI/system/components/justep/row/row" class="x-row x-row-center tb-nopadding" xid="row3">
   <div class="x-col" xid="col10">
    <div class="text-right" xid="div2">
     <span xid="span31" class="text-muted"><![CDATA[合计：]]></span>
     <span xid="span5" class="text-danger">￥</span>
     <span xid="span21" bind-text="ref('order_amount')" class="h4  text-danger"></span></div> 
    </div> 
   <div class="x-col x-col-33 text-center tb-settlement" xid="col11" bind-click="settlementClick">
    <span xid="span32"><![CDATA[确认收货]]></span>
    </div> </div>
  </li> 
            </ul> 
          </div>
        </div>  
        <div class="x-content-center x-pull-up" xid="div7"> 
          <span class="x-pull-up-label" xid="span8"></span>
        </div> 
      </div>
    </div>  
    </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="confirmMD" type="OKCancel" onOK="confirmOkClick" message="确定收到货物吗？" title="提示" style="top:5px;left:948px;"></span></div>
