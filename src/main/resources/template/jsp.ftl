<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored ="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
	<jsp:include page="module/head.jsp"/>
  </head>
  <body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table data-toggle="table" data-url="/rest/${allLowModelName}/query.do" data-height="246">
			    <thead>
			        <tr>
			            <th data-field="id">Item ID</th>
			            <th data-field="name">Item Name</th>
			            <th data-field="price">Item Price</th>
			        </tr>
			    </thead>
			</table>
		</div>
	</div>
</div>
  </body>
</html>