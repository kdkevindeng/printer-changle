<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored ="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>preview</title>
      <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
      <script src="/jsp/print/resources/scripts/jquery-1.7.1.min.js"></script>
      <style type="text/css" media="print">
          table{
              border-collapse: collapse;
              height: 280px;
              border-color: #000000 #000000 #000000 #000000;
              border-style: solid;
              border-top-width: 2px;
              border-right-width: 2px;
              border-bottom-width: 1px;
              border-left-width: 1px;
			  display:none;
			  font-family:SimHei;color:black;
          }
	hr{
		dispaly:none;
		color:#ffffff;
	}
	body{

		font-size:20px;
		font-family:SimHei;color:black;
	}
	.print{
		display:none;
	}
	.id{
		margin-left:100px;
	}
	.quanbanzongliang{
		padding-left:300px;
		font-family:SimHei;color:black;
	}
	.fenshu{
		padding-left:300px;
		font-family:SimHei;color:black;
	}
	.caijiangong{
		padding-left:250px;
		font-family:SimHei;color:black;
	}
	.riqi{
	}
	.leftprintword{
		padding-left:100px;
		margin-top:100px;
		font-family:SimHei;color:black;
	}
	.hetonghao{
		margin-left:160px;
		PADDING-bottom:100px;
		font-family:SimHei;color:black;
	}
          table td{
              width:12.5%;text-align: center;font-size: 14px;
              border-bottom: 1px solid #000000;
              border-left: 1px solid #000000;
              border-right: 0 solid #000000;
              border-top: 0 solid #000000;
		font-family:SimHei;color:black;
          }
          .rightspace{
              margin-right: 68px;
		line-height:1.7;
          }
          .container{
          }
      </style>
      <style type="text/css" >
          table{
              border-collapse: collapse;
              height: 280px;
              border-color: #000000 #000000 #000000 #000000;
              border-style: solid;
              border-top-width: 2px;
              border-right-width: 2px;
              border-bottom-width: 1px;
              border-left-width: 1px;
		font-family:SimHei;color:black;
          }
          table td{
              width:12.5%;text-align: center;font-size: 14px;
              border-bottom: 1px solid #000000;
              border-left: 1px solid #000000;
              border-right: 0 solid #000000;
              border-top: 0 solid #000000;
		font-family:SimHei;color:black;
          }
          .rightspace{
              margin-right: 68px;
		
          }
          .container{
          }
      </style>
      <script>
          $(function () {
             window.print();
          });
      </script>

  </head>
  <body style="color: #000000;		font-family:SimHei;color:black;">
  <div class="body">

      <c:forEach varStatus="status" items="${requestScope.quanbanzongliang_list}" var="quanbanzongliang">

          <div title="chuanpiao"  class="container" style="    width: 937px;">

              <div title="head" class="print" style="    text-align: center;    color: #000000;    font-size: 28px;">

                  <p style="    margin-bottom: 0px;"><span>缝</span><span>&nbsp; </span><span>制</span><span>&nbsp; </span><span>传</span><span>&nbsp; </span><span>票</span></p>

                  <hr style="    width: 300px;    color: #000000;    /* padding: 0px; */    margin-top: 10px;">

              </div>
              <div title="firstrow">
                  <div style="    float: left;"><p data-label="id" class="id">${requestScope.record.id}</p></div>
                  <div class="" style="    float: right;    margin-RIGHT: 60px;">
                      <p style="    float: left;"><span class="print">日期：</span></p>
                      <div style="    float: right;       margin-top:10px;">
                          <span data-label="riqi" class="riqi">${requestScope.record.riqi}</span>
                          <hr class="print">
                      </div>
                  </div>
              </div>
              <div title="secondrow" style="    clear: both;">

                  <div class="rightspace" style="    float: left;">
                      <p style="    float: left;"><span class="print">合同号：</span></p>
                      <div style="    float: right;    width: 100px;    margin-top:10px;">
                          <span data-label="hetonghao" class="hetonghao">${requestScope.record.hetonghao}</span>
                          <hr class="print" >
                      </div>
                  </div>
                  <div class="rightspace" style="float: left;">
                      <p style="    float: left;"><span class="print">全板总量：</span></p>
                      <div style="    float: right;    width: 100px;    margin-top:10px;">
                          <span data-label="quanbanzongliang" class="quanbanzongliang">${requestScope.record.quanbanzongliang}</span>
                          <hr class="print" >
                      </div>

                  </div>
                  <div class="rightspace" style="float: left;">
                      <p style="    float: left;"><span class="print">份数：</span></p>

                      <div style="    float: right;    width: 100px;    margin-top:10px;">

                          <span data-label="fenshu" class="fenshu">${status.count}/${requestScope.record.fenshu}</span>

                          <hr class="print" >

                      </div>

                  </div>

                  <div class="" style="float: left;margin-LEFT: 73px;">
                      <p style="    float: left;"><span class="print">裁剪工：</span></p>

                      <div style="    float: right;       margin-top:10px;">

                          <span data-label="caijiangong" class="caijiangong">${requestScope.record.caijiangong}</span>
                          <hr class="print" >

                      </div>


                  </div>

              </div>
              <div title="thirdrow" style="    clear: both;">
                  <div title="thirdrow-left-col" style="    float: left;    width: 25%;">
                      <div class="rightspace" style="">
                          <p style="    float: left;"><span class="print">品名：</span></p>

                          <div style="    float: right;        margin-top:10px;">

                              <span data-label="pinming" class="leftprintword">${requestScope.record.pinming}</span>

                              <hr class="print" >

                          </div>

                      </div>
                      <div class="rightspace" style="    clear: both;">
                          <p style="    float: left;"><span class="print">货号：</span></p>

                          <div style="    float: right;        margin-top:10px;">

                              <span data-label="huohao" class="leftprintword">${requestScope.record.huohao}</span><br>

                              <hr class="print" >

                          </div>

                      </div>
                      <div class="rightspace" style="    clear: both;">
                          <p style="    float: left;"><span class="print">规格：</span></p>

                          <div style="    float: right;        margin-top:10px;">

                              <span data-label="guige" class="leftprintword">${requestScope.record.guige}</span><br>

                              <hr class="print" >

                          </div>

                      </div>
                      <div class="rightspace" style="    clear: both;">
                          <p style="    float: left;"><span class="print">色号：</span></p>

                          <div style="    float: right;        margin-top:10px;">
                              <span data-label="sehao" class="leftprintword">${requestScope.record.sehao}</span><br>
                              <hr class="print" >
                          </div>
                      </div>
                      <div class="rightspace" style="    clear: both;">
                          <p style="    float: left;"><span class="print">数量：</span></p>
                          <div style="    float: right;        margin-top:10px;">

                              <span data-label="shuliang" class="leftprintword">${quanbanzongliang}</span><br>

                              <hr class="print" >

                          </div>

                      </div>
                      <div class="rightspace" style="    clear: both;">
                          <p style="    float: left;"><span class="print">锅号：</span></p>

                          <div style="    float: right;        margin-top:10px;">

                              <span data-label="guohao" class="leftprintword">${requestScope.record.guohao}</span>

                              <hr class="print" >

                          </div>

                      </div>
                  </div>
                  <div title="thirdrow-right-col"  style="    width: 75%;    float: right;">

                      <table style="    width: 100%;">
                          <tbody>
                          <tr>
                              <td>收边</td>
                              <td></td>
                              <td>合缝</td>
                              <td></td>
                              <td>上松紧带</td>
                              <td></td>
                              <td></td>
                              <td></td>

                          </tr>
                          <tr>
                              <td>合肩</td>
                              <td></td>
                              <td>四针</td>
                              <td></td>
                              <td>合衩</td>
                              <td></td>
                              <td></td>
                              <td></td></tr>
                          <tr>
                              <td>包领边</td>
                              <td></td>
                              <td>包衩</td>
                              <td></td>
                              <td>平板</td>
                              <td></td>
                              <td></td>
                              <td></td></tr>
                          <tr>
                              <td>包袖</td>
                              <td></td>
                              <td>包脚口</td>
                              <td></td>
                              <td>拉条</td>
                              <td></td>
                              <td></td>
                              <td></td></tr>
                          <tr>
                              <td>合袖</td>
                              <td></td>
                              <td>撸腰</td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td colspan="2" style="
            text-align: left;
        ">备注</td>
                          </tr>
                          <tr>
                              <td>打结</td>
                              <td></td>
                              <td>定标</td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td colspan="2" style="
            text-align: left;
        "></td>
                          </tr>
                          </tbody>
                      </table>
                  </div>

              </div>

          </div>
	<div STYLE="page-break-after: always;"></div>
      </c:forEach>

  </div>
  </body>
</html>
