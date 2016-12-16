<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:351px;top:42px;"
    onParamsReceive="modelParamsReceive" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="goodsData" idColumn="goods_id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="商品id" name="goods_id" type="Integer" xid="column9"/>  
      <column label="商品名称" name="goods_name" type="String" xid="column10"/>  
      <column label="商品描述" name="goods_jingle" type="String" xid="column15"/>  
      <column label="商铺id" name="store_id" type="Integer" xid="column16"/>  
      <column label="商铺名称" name="store_name" type="String" xid="column17"/>  
      <column label="分类id" name="gc_id" type="Integer" xid="column11"/>  
      <column label="商品价格" name="goods_price" type="Decimal" xid="column12"/>  
      <column label="商铺图片" name="goods_image" type="String" xid="column13"/>  
      <column name="goods_commonid" type="Integer" xid="column14"/>  
      <column name="goods_marketprice" type="Decimal" xid="xid29"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="imgData" idColumn="goods_image_id"> 
      <column label="id" name="goods_image_id" type="Integer" xid="xid2"/>  
      <column label="图片" name="goods_commonid" type="Integer" xid="xid1"/>  
      <column name="goods_image" type="String" xid="xid27"/>  
      <column name="store_id" type="Integer" xid="xid28"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="commentsData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid3"/>  
      <column label="用户名" name="fUserName" type="String" xid="xid4"/>  
      <column label="用户头像" name="fUserImg" type="String" xid="xid7"/>  
      <column label="评分" name="fScore" type="Float" xid="xid5"/>  
      <column label="评论内容" name="fContent" type="String" xid="xid6"/>  
      <column label="评论日期" name="fDate" type="Date" xid="xid8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="shopData" idColumn="store_id"> 
      <column name="store_id" type="Integer" xid="xid9"></column>
  <column label="店名" name="store_name" type="String" xid="xid10"></column>
  <column label="等级" name="grade" type="String" xid="xid11"></column>
  <column label="店标" name="store_image" type="String" xid="xid16"></column>
  <column label="电话" name="store_phone" type="String" xid="xid12"></column>
  <column label="单位名" name="store_company_name" type="String" xid="xid13"></column>
  <column label="地址" name="store_address" type="String" xid="xid14"></column>
  <column label="关注人数" name="fFocusNumber" type="Integer" xid="xid15"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="parameterData" idColumn="id"> 
      <column name="id" type="String" xid="xid19"/>  
      <column label="商品ID" name="fGoodsID" type="String" xid="xid20"/>  
      <column label="参数名" name="fName" type="String" xid="xid20"/>  
      <column label="参数" name="fParameter" type="String" xid="xid21"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="stateData" idColumn="state"> 
      <column label="显示状态" name="state" type="Integer" xid="xid26"/>  
      <data xid="default4">[{"state":0}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card tb-trans x-has-iosstatu"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box"
        xid="titleBar"> 
        <div class="x-titlebar-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-backBtn"
            xid="backBtn" icon="icon-chevron-left" onClick="backBtnClick"> 
            <i xid="i6" class="icon-chevron-left"/>  
            <span xid="span6">关闭</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title1"/>  
        <div class="x-titlebar-right reverse" xid="right1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-moreBtn pull-right"
            xid="moreBtn" icon="icon-home" onClick="moreBtnClick"> 
            <i xid="i13" class="icon-home"/>  
            <span xid="span23"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon tb-moreBtn  pull-right"
            xid="cartBtn" icon="icon-ios7-cart" onClick="toCartBtnClick"> 
            <i xid="i12" class="icon-ios7-cart"/>  
            <div xid="cartBadge" class="badge" style="position:absolute; top:3px;background-color:red"></div> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards tb-trans"> 
      <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel"
        xid="carousel1" auto="false" style="height:251px;"> 
        <ol class="carousel-indicators" xid="default1"/>  
        <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
          active="0" slidable="true" wrap="true" swipe="true" xid="contents1" routable="false"> 
          <div class="x-contents-content" xid="content1"> 
            <img src="" alt="" xid="image1" class="image-wall tb-img"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card panel-body"> 
        <div component="$UI/system/components/bootstrap/row/row" class="row tb-nopadding"> 
          <div class="col col-xs-10  tb-nopadding" xid="col8"> 
            <h4 xid="h41" class=" text-black" bind-text="$model.goodsData.val(&quot;goods_name&quot;)"
              style="height:100%;"><![CDATA[]]></h4>  
            <div xid="div4"> 
              <span xid="span17" class="text-danger h3"><![CDATA[￥]]></span>  
              <span xid="span29" class="text-danger h3" bind-text="$model.goodsData.ref('goods_price')"/> 
            </div>  
            <div xid="div5" class="text-muted"> 
              <span xid="span19"><![CDATA[价格：]]></span>  
              <span xid="span18" class="tb-text-del">￥</span>  
              <span xid="span13" bind-text="$model.goodsData.ref('goods_marketprice')"
                class="tb-text-del"/> 
            </div> 
          </div>  
          <div class="col col-xs-2  tb-nopadding" xid="col9"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top pull-right tb-nopadding"
              label="分享" xid="shareBtn" icon="icon-android-share" onClick="shareBtnClick"> 
              <i xid="i10" class="text-success icon-android-share"/>  
              <span xid="span10" class="text-success">分享</span> 
            </a> 
          </div> 
        </div>  
        <div component="$UI/system/components/bootstrap/row/row" class="row text-muted h5 tb-nopadding"> 
          <div class="col col-xs-4  tb-nopadding" xid="col11"> 
            <span xid="span14">快递</span>  
            <span xid="span15"><![CDATA[免费]]></span> 
          </div>  
          <div class="col col-xs-4 text-center" xid="col12"> 
            <span xid="span24">月销</span>  
            <span xid="span26"><![CDATA[1]]></span>  
            <span xid="span27">笔</span> 
          </div>  
          <div class="col col-xs-4 text-center" xid="col13"> 
            <span xid="span16" bind-text="goodsData.ref('fAddress')"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card"> 
        <div xid="div9" class="panel-body tb-nopadding"> 
          <div class="panel-body media"> 
            <div class="media-left"> 
              <img src="" alt="" xid="image4" class="img-rounded" bind-attr-src="shopData.val('store_image') == '' ? &quot;&quot; : shopData.val('store_image')" height="50px" style="width:50px;" /> 
            </div>  
            <div class="media-body"> 
              <span xid="span46" bind-text="'销售商：' + shopData.val(&quot;store_company_name&quot;)" class="show" />  
              <span xid="span48" bind-text="'电话：' + shopData.val('store_phone')"><![CDATA[]]></span> 
            <h5 xid="h51" bind-text="'地址：' + shopData.val('store_address')">h5</h5></div> 
          </div>  
          </div>  
        </div><div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card"> 
        <div class="panel-body"> 
          <div class="h5 text-black"> 
            <span xid="span22">宝贝评价（</span>  
            <span xid="span25"><![CDATA[0]]></span>  
            <span xid="span28">）</span> 
          </div>  
          <div class="media-left"> 
            <img src="" alt="" xid="image3" class="img-circle" bind-attr-src="commentsData.ref('fUserImg')"
              height="40px" style="width:40px;"/> 
          </div>  
          <div class="media-body"> 
            <span xid="span30" bind-text="commentsData.ref('fUserName')"/> 
          </div>  
          <div> 
            <span xid="span32" bind-text="commentsData.ref('fContent')"/> 
          </div>  
          <div class="text-muted"> 
            <span xid="span36" bind-text="commentsData.ref('fDate')"/> 
          </div>  
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label text-black"
              label="查看更多评论" xid="button4"> 
              <i xid="i11"/>  
              <span xid="span5">查看更多评论</span> 
            </a> 
          </div> 
        </div> 
      </div>  
        
      <div component="$UI/system/components/justep/panel/panel" class="panel x-card"> 
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-tabs"
          tabbed="true"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label active"
            label="图文详情" xid="detailsBtn" target="detailsContent"> 
            <i xid="i14"/>  
            <span xid="span31">图文详情</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="产品参数" xid="parameterBtn" target="parameterContent"> 
            <i xid="i15"/>  
            <span xid="span33">产品参数</span> 
          </a> 
        </div>  
        <div component="$UI/system/components/justep/contents/contents" class="x-contents"
          active="0"> 
          <div class="x-contents-content panel-body" xid="detailsContent"> 
            <div bind-html="$model.goodsData.val(&quot;fDetail&quot;)"/> 
          </div>  
          <div class="x-contents-content panel-body" xid="parameterContent"> 
            <div component="$UI/system/components/justep/list/list" class="x-list x-cards"
              xid="list1" data="parameterData"> 
              <ul class="x-list-template" xid="ul1" componentname="ul(html)"
                id="undefined_ul1"> 
                <li xid="li1" componentname="li(html)" id="undefined_li1"
                  class="list-group-item"> 
                  <span bind-text="ref('fName')" class="col col-xs-4 tb-nopadding text-muted"/>  
                  <span bind-text="ref('fParameter')" class="x-flex col col-xs-8 tb-nopadding"/>  
                  <div class="clearfix"/> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"> 
        <div class="col col-xs-5 tb-nopadding" xid="col3"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="客服" xid="button1" icon="icon-ios7-chatboxes-outline"> 
              <i xid="i1" class="icon icon-ios7-chatboxes-outline"/>  
              <span xid="span1">客服</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="店铺" xid="button2" icon="icon-bag"> 
              <i xid="i2" class="icon icon-bag"/>  
              <span xid="span2">店铺</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="收藏" xid="button3" icon="icon-ios7-star-outline"> 
              <i xid="i3" class="icon icon-ios7-star-outline"/>  
              <span xid="span3">收藏</span> 
            </a> 
          </div> 
        </div>  
        <div class="col col-xs-7 tb-nopadding" xid="col6"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="加入购物车" xid="joinCartBtn" icon="icon-radio-waves" onClick="addToCartBtnClick"> 
              <i xid="i8" class="icon-radio-waves icon"/>  
              <span xid="span7">加入购物车</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="立即购买" xid="buyBtn" icon="icon-android-display" onClick="btnDirectBuyClick"> 
              <i xid="i7" class="icon-android-display icon"/>  
              <span xid="span8">立即购买</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
