<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:84px;top:18px;" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="shopData" idColumn="store_id" confirmDelete="false" confirmRefresh="false">
   <column label="id" name="store_id" type="Integer" xid="xid9"></column>
   <column label="店名" name="store_name" type="String" xid="xid10"></column>
   <column label="店标" name="img" type="String" xid="xid11"></column>
   <column name="sum" type="Decimal" xid="xid7"></column>
   <column name="count" type="Integer" xid="xid8"></column></div>
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
   <column name="goods_num" type="Integer" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="address_id">
   <column label="ID" name="address_id" type="Integer" xid="column18"></column>
   <column label="姓名" name="true_name" type="String" xid="column19"></column>
   <column label="手机" name="mob_phone" type="String" xid="column20"></column>
   <column label="地址" name="address" type="String" xid="column21"></column>
   <column label="praise" name="member_id" type="Integer" xid="column22"></column>
   <column label="默认" name="is_default" type="Integer" xid="xid12"></column>
   <column label="commentname" name="commentName" type="String" xid="xid13"></column>
   <column label="commentconyent" name="commentContent" type="String" xid="xid14"></column>
   <column label="state" name="state" type="String" xid="xid15"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver"> 
    <div class="x-popOver-overlay" xid="div9"/>  
    <div class="x-popOver-content" xid="div10">
      <div class="x-cards panel-heading">
        <h5><![CDATA[选择配送方式：]]></h5>
      </div>
      <div class="panel-body">
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list2" data="addressData"> 
          <ul class="x-list-template" xid="ul1"> 
            <li xid="li2" class="list-group-item tb-noborder" bind-click="sendLiClick">
              <span component="$UI/system/components/justep/button/radio" class="x-radio"
                bind-value="ref('is_default')" checkedValue="1" checked="false" xid="state"/>  
              <span bind-text="ref('address')"/>  
              <span bind-text="ref('fCost')"/>
            </li>
          </ul> 
        </div> 
      </div> 
    </div>
  </div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left text-white" label="确认订单" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
          <i xid="i1" class="icon-chevron-left" />  
          <span xid="span1">确认订单</span> 
        </a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div class="x-panel-content x-cards" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card tb-noborder media"
        xid="panel2"> 
        <div class="media-left media-middle"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black"
            label="button" xid="button3" icon="icon-ios7-location"> 
            <i xid="i3" class="icon-ios7-location"/>  
            <span xid="span7"/> 
          </a> 
        </div>  
        <div class="media-body"> 
          <h4 class="text-black"><![CDATA[收货人：张三]]>  
            <span xid="span9" class="pull-right"><![CDATA[13758547152]]></span> 
          </h4>  
          <h5 class="text-black"><![CDATA[收货地址：云南省昆明市高新区昌源北路300号城市新A座1508室]]></h5>  
          <h5 class="text-warning"><![CDATA[（收货不方便时，可选择代收货服务）]]></h5> 
        </div>  
        <div class="media-right media-middle"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black"
            label="button" xid="button4" icon="icon-ios7-arrow-forward"> 
            <i xid="i4" class="icon-ios7-arrow-forward"/>  
            <span xid="span8"/> 
          </a> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default tb-noborder x-card x-tuniu"
        xid="panel3"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          data="shopData" limit="1" xid="shopList" disablePullToRefresh="true" disableInfiniteLoad="true"
          autoLoad="true" dataItemAlias="shopRow"> 
          <ul class="x-list-template x-min-height" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl"
            id="undefined_listTemplateUl1"> 
            <li xid="li1" class="tb-noborder"> 
              <div class="panel-body"> 
                <img src="" alt="" xid="image3" bind-attr-src="$model.getImageUrl(val(&quot;fShopImg&quot;))"
                  class="img-circle tb-img-shop"/>  
                <span bind-text="ref('fShopName')" class="text-black"></span> 
              </div>  
              <div component="$UI/system/components/justep/list/list" class="x-list"
                data="goodsData" filter="$row.val('fShopID')==shopRow.val('id')" xid="list4"
                disablePullToRefresh="true" disableInfiniteLoad="true" limit="1"> 
                <ul class="x-list-template x-min-height" xid="listTemplateUl4"
                  componentname="$UI/system/components/justep/list/list#listTemplateUl"
                  id="undefined_listTemplateUl4"> 
                  <li xid="li4" class="panel-body media" componentname="li(html)"
                    id="undefined_li4"> 
                    <div class="media-left"> 
                      <img src="" alt="" xid="image4" bind-attr-src="$model.getImageUrl(val(&quot;fImg&quot;))"
                        class="tb-img-good"/> 
                    </div>  
                    <div class="media-body"> 
                      <span bind-text="ref('fTitle')" class="text-black h5"
                        xid="span33"/>  
                      <div class="text-muted" xid="div1"> 
                        <span xid="span34">颜色：</span>  
                        <span bind-text="ref('fColor')" xid="span35"/>  
                        <span xid="span36">；</span>  
                        <span xid="span37">尺寸：</span>  
                        <span bind-text="ref('fSize')" xid="span38"/> 
                      </div>  
                      <div class="text-muted" xid="div2"> 
                        <span xid="span32" class="text-danger">￥</span>  
                        <span xid="span21" bind-text="ref('fPrice')" class="h4 text-danger"/> 
                      </div>  
                      <div class="numberOperation" xid="div3"> 
                        <span class="pull-right text-black h4" bind-text="ref('fNumber')"
                          xid="span39"/>  
                        <span class="pull-right text-black h4" xid="span40">x</span> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </li> 
          </ul> 
        </div>  
        <div> 
          <div class="panel-heading" bind-click="sendClick"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right"
              label="button" xid="button2" icon="icon-ios7-arrow-right"> 
              <i class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span12"/>
            </a>
            <span class="pull-right text-muted" xid="sendTitle"><![CDATA[快递 免邮
]]></span>  
            <span xid="span6"><![CDATA[配送方式]]></span> 
          </div>  
          <div class="panel-heading"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right"
              label="button" xid="button5" icon="icon-ios7-arrow-right"> 
              <i class="icon-ios7-arrow-right text-muted" xid="i7"/>  
              <span xid="span13"/>
            </a>
            <span xid="span10"><![CDATA[运费险]]></span> 
          </div>  
          <div class="panel-heading"> 
            <div class="media-left media-middle"> 
              <span class="x-flex" style="width:80px;"><![CDATA[买家留言：]]></span> 
            </div>  
            <div class="media-body"> 
              <input component="$UI/system/components/justep/input/input" class="form-control input-sm tb-noborder text-muted"
                xid="input1" bind-value="'选填，可填写您和卖家达成的协议'"/> 
            </div> 
          </div>  
          <div class="panel-heading text-right" bind-text="'共1件商品'"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div> 
        <div class="col col-xs-8" xid="col7"> 
          <div class="h4 text-right" xid="div4"> 
            <span xid="span15" class="text-muted">合计：</span>  
            <span xid="span17" class="text-danger"><![CDATA[￥56]]></span> 
          </div> 
        </div>  
        <div class="col col-xs-4 tb-settlement" xid="col6"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-label text-white"
              label="确认" xid="confirmBtn" onClick="confirmBtnClick"> 
              <i xid="i2"/>  
              <span xid="span2">确认</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
