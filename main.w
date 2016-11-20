<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"
    onModelConstruct="modelModelConstruct" onunLoad="modelUnLoad" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="图片" name="fImgUrl" type="String" xid="xid2"/>  
      <column label="链接地址" name="fUrl" type="String" xid="xid9"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="店铺ID" name="fShopID" type="String" xid="xid3"/>  
      <column label="标题" name="fTitle" type="String" xid="column2"/>  
      <column label="图片" name="fImg" type="String" xid="column3"/>  
      <column label="价格" name="fPrice" type="Float" xid="column4"/>  
      <column label="邮费" name="fPostage" type="String" xid="column6"/>  
      <column label="月销量" name="fRecord" type="Integer" xid="column7"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents" swipe="false" wrap="false" slidable="false" onActiveChange="contents2ActiveChange"> 
        <div class="x-contents-content x-cards" xid="homeContent" style="background-color:#e7e8ea;"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"> 
            <div class="x-panel-top" xid="top1"> 
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar" xid="titleBarHome" title="爱我家" style="background-color:#cccccc;"> 
                <div class="x-titlebar-left" xid="div6"/>  
                <div class="x-titlebar-title" xid="div1">爱我家</div>  
                <div class="x-titlebar-right reverse" xid="div5"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-icon-top" xid="button8" icon="fa fa-bars"
                    style="width:44px;height:44px;"> 
                    <i xid="i8" class="fa fa-bars"/>  
                    <span xid="span8"/> 
                  </a> 
                </div> 
              </div> 
            </div>  
            <div class="x-panel-content  x-scroll-view" xid="content3" style="bottom: 0px;"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView" onPullDown="scrollViewPullDown"> 
                <div class="x-content-center x-pull-down container" xid="div16"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i9"/>  
                  <span class="x-pull-down-label" xid="span17">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div17"> 
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel1"> 
                    <div component="$UI/system/components/bootstrap/carousel/carousel"
                      class="x-carousel carousel" xid="carousel1" auto="true" interval="4"> 
                      <ol class="carousel-indicators" xid="ol1"/>  
                      <div class="x-contents carousel-inner" role="listbox"
                        component="$UI/system/components/justep/contents/contents"
                        active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg"
                        routable="false"> 
                        <div class="x-contents-content" xid="content2"> 
                          <img alt="" xid="image13" bind-click="openPageClick"
                            class="tb-img1" pagename="./detail.w" align="middle"/> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel2"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row7" style="background-color:#e7e8ea;"> 
                      <div class="col col-md-1" xid="col12"/>  
                      <div class="col col-md-10" xid="col13"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row6"> 
                          <div class="col col-xs-4" xid="col7"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="./agent/agentmain.w" xid=""> 
                              <img src="./main/img/icon-menu-1.png" alt=""
                                xid="" class="img-responsive center-block"/>  
                              <span xid=""><![CDATA[代办业务]]></span> 
                            </div> 
                          </div>  
                          <div class="col col-xs-4" xid="col10"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img src="./main/img/icon-menu-2.png" alt=""
                                xid="image1" class="img-responsive center-block"/>  
                              <span xid="span9"><![CDATA[生活服务]]></span> 
                            </div> 
                          </div>  
                          <div class="col col-xs-4" xid="col11"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img src="./main/img/icon-menu-3.png" alt=""
                                xid="image2" class="img-responsive center-block"/>  
                              <span xid="span10"><![CDATA[居家服务]]></span> 
                            </div> 
                          </div> 
                        </div>  
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row8"> 
                          <div class="col col-xs-4" xid="col15"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="./service/relexService.w" xid=""> 
                              <img alt="" xid="image8" src="./main/img/icon-menu-4.png"
                                class="img-responsive center-block"/>  
                              <span xid="span11"><![CDATA[休闲服务]]></span> 
                            </div> 
                          </div>  
                          <div class="col col-xs-4" xid="col16"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img alt="" xid="image9" src="./main/img/icon-menu-5.png"
                                class="img-responsive center-block"/>  
                              <span xid="span12"><![CDATA[出行服务]]></span> 
                            </div> 
                          </div>  
                          <div class="col col-xs-4" xid="col17"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img alt="" xid="image3" src="./main/img/icon-menu-6.png"
                                class="img-responsive center-block"/>  
                              <span xid="span19"><![CDATA[商务服务]]></span> 
                            </div> 
                          </div> 
                        </div>  
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row9"> 
                          <div class="col col-xs-4" xid="col18"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img alt="" xid="image1" src="./main/img/icon-menu-7.png"
                                class="img-responsive center-block"/>  
                              <span xid="span20"><![CDATA[最新消息]]></span> 
                            </div> 
                          </div>  
                          <div class="col col-xs-4" xid="col19"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img alt="" xid="image2" src="./main/img/icon-menu-8.png"
                                class="img-responsive center-block"/>  
                              <span xid="span10"><![CDATA[个人中心]]></span> 
                            </div> 
                          </div>  
                          <div class="col col-xs-4" xid="col20"> 
                            <div class="text-center menu-icon" bind-click="openPageClick"
                              pagename="" xid=""> 
                              <img alt="" xid="image8" src="./main/img/icon-menu-9.png"
                                class="img-responsive center-block"/>  
                              <span xid="span11"><![CDATA[系统设置]]></span> 
                            </div> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-md-1" xid="col14"/> 
                    </div> 
                  </div> 
                </div>  
                <!--     
                <div class="x-content-center x-pull-up" xid="div18"> 
                  <span class="x-pull-up-label" xid="span18">加载更多...</span> 
                </div>
                 --> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content x-cards" xid="userContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="profileContainer" src="./profile.w" routable="true"
            autoLoad="true"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" height="55"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card"
        tabbed="true" xid="buttonGroup1" style="height:55px;background-color:#CCC;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active"
          label="首页" xid="homeBtn" icon="icon-home" target="homeContent"> 
          <i xid="i1" class="icon-home icon"/>  
          <span xid="span1">首页</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="我的" xid="userBtn" icon="icon-person" target="userContent"> 
          <i xid="i5" class="icon icon-person"/>  
          <span xid="span5">我的</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/mine/aiwojia/css/font-awesome/css/fa.icons"/> 
  </resource> 
</div>
