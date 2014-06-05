<html>
<head>

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
<%@page import="tooltwist.julius.productionHelpers.GoogleMapsProductionHelper"%>
--%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
//	GoogleMapsProductionHelper h = (GoogleMapsProductionHelper) helper;
//	XData data = h.getData(jh);
%>

<!-- ********** INSERT HTML HERE ********** -->
<!DOCTYPE html>

<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
function initialize()
{
var mapProp = {
  center:new google.maps.LatLng(%%myLatitude%%,-%%myLongitude%%),
  zoom:%%myZoom%%,
  mapTypeId:google.maps.MapTypeId.%%myMapType%%
  };
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<div id="googleMap" style="width:%%myWidth%%;height:%%myHeight%%;"></div>



<div %%idDefinition%% class="GoogleMaps" style="width:200px; border-style:solid; border-width:1px; text-align: center;">



	<!-- Display an image 
	<img src="%%URL(julius/images/myImage.png)%%"/>
	 -->

	<%-- Use a property
	My Property = <%=snippetVar_myProperty%><br/>
	--%>
	
	<%-- link to a navpoint, with automatic parameters added
	<%
	String nextPageUrl = RoutingUIM.navpointUrl(jh, snippetVar_myNavpoint, AutomaticUrlParametersMode.INSERT_AUTOMATIC_URL_PARAMETERS_NOW);
	%>
	<a href="+nextPageUrl+">next page</a>
	--%>
	
	
	

</div>


<!--END-->
</body>
</html>
