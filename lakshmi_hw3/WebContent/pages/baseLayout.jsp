<!-- 
Lakshmi Venkataiah
This is base layout page of tiles 
 -->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>

<body>
	<tiles:insertAttribute name="header" />
	<hr />
	<tiles:insertAttribute name="menu" />
	<hr />
	<tiles:insertAttribute name="body" />
	<hr />
	<tiles:insertAttribute name="footer" />
</body>
</html>