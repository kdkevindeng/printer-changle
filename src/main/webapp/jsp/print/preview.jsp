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
  <style type="text/css">
    table{
      border-collapse: collapse;
      height: 280px;
      border-color: #009DDA #009DDA #009DDA #009DDA;
      border-style: solid;
      border-top-width: 2px;
      border-right-width: 2px;
      border-bottom-width: 1px;
      border-left-width: 1px;
    }
    table td{
      width:12.5%;text-align: center;font-size: 14px;
      border-bottom: 1px solid #009DDA;
      border-left: 1px solid #009DDA;
      border-right: 0 solid #009DDA;
      border-top: 0 solid #009DDA;
    }
    .rightspace{
      margin-right: 68px;
    }
    .container{
      padding-bottom: 600px;
      border: solid 1px;
      padding-left: 10PX;
      padding-right: 10px
    }
  </style>
</head>
<body style="color: #009DDA">
<div class="body">

    <c:forEach varStatus="status" items="${requestScope.quanbanzongliang_list}" var="quanbanzongliang">

        <div title="chuanpiao"  class="container" style="    margin: 50px;    width: 937px;">

            <div title="head" style="    text-align: center;    color: #009DDA;    font-size: 28px;">

                <p style="    margin-bottom: 0px;"><span>缝</span><span>&nbsp; </span><span>制</span><span>&nbsp; </span><span>传</span><span>&nbsp; </span><span>票</span></p>

                <hr style="    width: 300px;    color: #009DDA;    /* padding: 0px; */    margin-top: 10px;">

            </div>
            <div title="firstrow">
                <div style="    float: left;"><p data-label="id">${requestScope.record.id}</p></div>
                <div class="" style="    float: right;    margin-left: 68px;">
                    <p style="    float: left;"><span>日期：</span></p>
                    <div style="    float: right;    width: 100px;    margin-top:10px;">
                        <span data-label="riqi">${requestScope.record.riqi}</span>
                        <hr>
                    </div>
                </div>
            </div>
            <div title="secondrow" style="    clear: both;">

                <div class="rightspace" style="    float: left;">
                    <p style="    float: left;"><span>合同号：</span></p>
                    <div style="    float: right;    width: 100px;    margin-top:10px;">
                        <span data-label="hetonghao">${requestScope.record.hetonghao}</span>
                        <hr>
                    </div>
                </div>
                <div class="rightspace" style="float: left;">
                    <p style="    float: left;"><span>全板总量：</span></p>
                    <div style="    float: right;    width: 100px;    margin-top:10px;">
                        <span data-label="quanbanzongliang">${requestScope.record.quanbanzongliang}</span>
                        <hr>
                    </div>

                </div>
                <div class="rightspace" style="float: left;">
                    <p style="    float: left;"><span>份数：</span></p>

                    <div style="    float: right;    width: 100px;    margin-top:10px;">

                        <span data-label="fenshu">${status.count}/${requestScope.record.fenshu}</span>

                        <hr>

                    </div>

                </div>

                <div class="" style="float: left;margin-left: 73px;">
                    <p style="    float: left;"><span>裁剪工：</span></p>

                    <div style="    float: right;    width: 100px;    margin-top:10px;">

                        <span data-label="caijiangong">${requestScope.record.caijiangong}</span>
                        <hr>

                    </div>


                </div>

            </div>
            <div title="thirdrow" style="    clear: both;">
                <div title="thirdrow-left-col" style="    float: left;    width: 25%;">
                    <div class="rightspace" style="">
                        <p style="    float: left;"><span>品名：</span></p>

                        <div style="    float: right;    width: 100px;    margin-top:10px;">

                            <span data-label="pinming">${requestScope.record.pinming}</span>

                            <hr>

                        </div>

                    </div>
                    <div class="rightspace" style="    clear: both;">
                        <p style="    float: left;"><span>货号：</span></p>

                        <div style="    float: right;    width: 100px;    margin-top:10px;">

                            <span data-label="huohao">${requestScope.record.huohao}</span>

                            <hr>

                        </div>

                    </div>
                    <div class="rightspace" style="    clear: both;">
                        <p style="    float: left;"><span>规格：</span></p>

                        <div style="    float: right;    width: 100px;    margin-top:10px;">

                            <span data-label="guige">${requestScope.record.guige}</span>

                            <hr>

                        </div>

                    </div>
                    <div class="rightspace" style="    clear: both;">
                        <p style="    float: left;"><span>色号：</span></p>

                        <div style="    float: right;    width: 100px;    margin-top:10px;">
                            <span data-label="sehao">${requestScope.record.sehao}</span>
                            <hr>
                        </div>
                    </div>
                    <div class="rightspace" style="    clear: both;">
                        <p style="    float: left;"><span>数量：</span></p>
                        <div style="    float: right;    width: 100px;    margin-top:10px;">

                            <span data-label="shuliang">${quanbanzongliang}</span>

                            <hr>

                        </div>

                    </div>
                    <div class="rightspace" style="    clear: both;">
                        <p style="    float: left;"><span>锅号：</span></p>

                        <div style="    float: right;    width: 100px;    margin-top:10px;">

                            <span data-label="guohao">${requestScope.record.guohao}</span>

                            <hr>

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
    </c:forEach>

</div>
</body>
</html>
