<html>
<head>
<title></title>
</head>
<body>

<%
	WbdProductionHelper helper = null;
	JspHelper jh = null;
	String snippetVar_myProperty;
	String snippetVar_thisNavpoint;
%>
<!--START-->
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XData"%>
<%--
<%@page import="tooltwist.julius.productionHelpers.LinkProductionHelper"%>
--%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
//	LinkProductionHelper h = (LinkProductionHelper) helper;
//	XData data = h.getData(jh);
%>

<a href= %%myLink%%> %%myText%% </a>

<!--END-->
</body>
</html>
