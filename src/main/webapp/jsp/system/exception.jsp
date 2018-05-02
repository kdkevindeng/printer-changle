<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <jsp:include page="${applicationScope.get("basePath")}/jsp/module/head.jsp"/>
</head>
<body>
<div class="container">
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <div class="logo">
            <h1>出错了！</h1>
            <p>${errormessage}</p>
        </div>
        <div class="clearfix"></div>
        <div class="sr-only">
            &nbsp;
        </div>
        <br>
        <div class="col-lg-6 col-lg-offset-3">
            <div class="btn-group btn-group-justified">
                <a href="${applicationScope.get("basePath")}/home/boxview.do" class="btn btn-warning">首页</a>
                <a href="javascript:history.back()" class="btn btn-info">后退</a>
            </div>
        </div>
    </div>
    <!-- /.col-lg-8 col-offset-2 -->
</div>
</body>
</html>
