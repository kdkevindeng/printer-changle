<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/12
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
    application.setAttribute("basePath", basePath);
%>
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/js/jquery/jquery-1.10.2.js"></script >
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/archetype/bootstrap/js/bootstrap.js"></script >
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/js/jquery/jquery-ui-1.9.2.custom.min.js"></script >
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/js/jquery/validate/jquery.validate.js"></script >
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/js/jquery/validate/additional-methods.js"></script >
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/js/jquery/validate/jquery.validate.unobtrusive.bootstrap.js"></script >
<script type= "text/javascript" src= "${applicationScope.get("basePath")}/js/jquery/jQuery.md5.js"></script >

<link rel="stylesheet" type="text/css" href="${applicationScope.get("basePath")}/archetype/webuploader/style.css">
<link rel="stylesheet" type="text/css" href="${applicationScope.get("basePath")}/archetype/webuploader/webuploader.css">
<link rel="stylesheet" type="text/css" href="${applicationScope.get("basePath")}/archetype/jquery/validate/validate.css">
<link rel="stylesheet" type="text/css" href="${applicationScope.get("basePath")}/archetype/bootstrap/css/bootstrap.css" />