<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:135px;top:10px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="shopData" idColumn="store_id" confirmDelete="false" confirmRefresh="false" onCustomRefresh="shopDataCustomRefresh"> 
      <column label="id" name="store_id" type="Integer" xid="xid9"></column>
  <column label="店名" name="store_name" type="String" xid="xid10"></column>
  <column label="店标" name="img" type="String" xid="xid11"></column>
  <column name="sum" type="Decimal" xid="xid7"></column>
  <column name="count" type="Integer" xid="xid8"></column>
  <column name="chooseAll" type="Integer" xid="xid14"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="goods_id">
   <column label="商品id" name="goods_id" type="Integer" xid="xid18"></column>
  <column label="商品名称" name="goods_name" type="String" xid="xid19"></column>
  <column label="商品描述" name="goods_jingle" type="String" xid="xid20"></column>
  <column label="商铺id" name="store_id" type="Integer" xid="xid21"></column>
  <column label="商铺名称" name="store_name" type="String" xid="xid22"></column>
  <column label="分类id" name="gc_id" type="Integer" xid="xid23"></column>
  <column label="商品价格" name="goods_price" type="Decimal" xid="xid24"></column>
  <column label="商铺图片" name="goods_image" type="String" xid="xid25"></column>
  <column name="goods_commonid" type="Integer" xid="xid26"></column>
  <column name="choosed" type="Integer" xid="xid1"></column>
  <column name="market_price" type="Decimal" xid="xid2"></column>
  <column name="goods_num" type="Integer" xid="xid3"></column>
  <column name="choosed" type="Integer" xid="xid15"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sumData" idColumn="store_id"><column name="store_id" type="Integer" xid="xid4"></column>
  <column name="count" type="Integer" xid="xid5"></column>
  <column name="sum" type="Decimal" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="chooseAllData" idColumn="store_id"><column name="store_id" type="Integer" xid="xid12"></column>
  <column name="chooseAll" type="Integer" xid="xid13"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="48"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backBtn" icon="icon-chevron-left" onClick="backBtnClick">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span3"></span></a></div>  
        <div class="x-titlebar-title"> 
          <span xid="span1"><![CDATA[购物车]]></span>  
          </div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="delBtn" icon="icon-ios7-trash-outline" onClick="delBtnClick"> 
            <i xid="i4" class="icon-ios7-trash-outline"/>  
            <span xid="span20"/> 
          </a> 
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
            data="shopData" limit="-1" xid="shopList" disablePullToRefresh="true" disableInfiniteLoad="true"
            autoLoad="true" dataItemAlias="shopRow"> 
            <ul class="x-list-template x-min-height" xid="listTemplateUl1"
              componentname="$UI/system/components/justep/list/list#listTemplateUl"
              id="undefined_listTemplateUl1"> 
              <li xid="li1" class="panel panel-default x-card tb-box"> 
                <div class="panel-heading">
                  <i xid="i5" class="icon-chevron-right"/> 
                  <img src="" alt="" xid="image3" bind-attr-src='$model.getImageUrl(val("store_image"))'
                    class="img-circle tb-img-shop"/> 
                  <span xid="span4" bind-text="ref('store_name')"/>
                </div>  
                <div component="$UI/system/components/justep/list/list" class="x-list bg-white"
                  data="goodsData" filter="$row.val('store_id')==shopRow.val('store_id')"
                  xid="goodsList" disablePullToRefresh="true" disableInfiniteLoad="true"> 
                  <ul class="x-list-template x-min-height" xid="listTemplateUl4"
                    componentname="$UI/system/components/justep/list/list#listTemplateUl"
                    id="undefined_listTemplateUl4"> 
                    <li xid="li4" class="x-min-height tb-goodList" componentname="li(html)"
                      id="undefined_li4"> 
                      <div component="$UI/system/components/justep/row/row" class="x-row">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
   <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox x-radio choose" xid="checkbox2" bind-ref="ref('choosed')" checkedValue="1" uncheckedValue="0" onChange="goodsChooseChange"></span></div><div class="x-col x-col-fixed tb-nopadding" xid="col2"><img src="" alt="" xid="image1" bind-attr-src='$model.getImageUrl(val("goods_image"))' class="tb-img-good" bind-click="listClick"></img></div>
   <div class="x-col  tb-nopadding" xid="col3"><span bind-text="ref('goods_name')" class="x-flex text-black h5 tb-nomargin" xid="span26"></span>
  <div class="text-muted" xid="div5">
   <span xid="span22" class="text-danger">￥</span>
   <span xid="span28" bind-text="ref('goods_price')" class="h4 text-danger"></span>
   <span xid="span19" class="tb-del-line">￥</span>
   <span xid="span24" bind-text="ref('market_price')" class="tb-del-line"></span></div>
  <div class="tb-numberOperation" xid="div4">
   <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button1" icon="icon-android-remove" onClick="reductionBtnClick">
    <i xid="i3" class="icon-android-remove"></i>
    <span xid="span13"></span></a> 
   <span bind-text="ref('goods_num')" class="pull-left"></span><a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button2" icon="icon-android-add" onClick="addBtnClick">
    <i xid="i6" class="icon-android-add"></i>
    <span xid="span29"></span></a> 
   
   </div></div></div>
  </li> 
                  </ul> 
                </div> 
              <div component="$UI/system/components/justep/row/row" class="x-row x-row-center tb-nopadding" xid="row3">
   <div class="x-col x-col-20 x-col-center" xid="col12">
    <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" label="全选" onChange="allChooseChange" checkedValue="1" uncheckedValue="0" bind-ref='ref("chooseAll")'></span></div> 
   <div class="x-col" xid="col10">
    <div class="text-right" xid="div2">
     <span xid="span31" class="text-muted"><![CDATA[店铺合计：]]></span>
     <span xid="span5" class="text-danger">￥</span>
     <span xid="span21" class="h4 text-danger" bind-text="ref('sum')"></span></div> 
    <div class="text-right" xid="div1">
     <span xid="span30">不含运费</span></div> </div> 
   <div class="x-col x-col-33 text-center tb-settlement" xid="col11" bind-click="settlementClick">
    <span xid="span32">结算(</span>
    <span xid="span23" class="allNumber" bind-text="ref('count')"></span>
    <span xid="span25">)</span></div> </div></li> 
            </ul> 
          </div>
        </div>  
        <div class="x-content-center x-pull-up" xid="div7"> 
          <span class="x-pull-up-label" xid="span8"></span>
        </div> 
      </div>
    </div>  
    </div> 
</div>
