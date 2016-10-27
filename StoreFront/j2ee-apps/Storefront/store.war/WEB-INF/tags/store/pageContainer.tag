<%@ tag language="java"%>
<%@ include file="/includes/taglibs.jspf" %>

<dsp:page>
<dsp:importbean bean="/atg/multisite/Site"/>

<dsp:include page="/includes/pageStart.jsp">

</dsp:include>
<body class="main">
	<!-- include site link name jsp here -->
	<div class="padding5">
	<dsp:getvalueof bean="Site.productionURL" var="url"/>
		<a href="${url}"><h1 class="title">Shop</h1></a>
	</div>
	<jsp:doBody />
</body>
<dsp:include page="/includes/pageEnd.jsp">
</dsp:include> 
</dsp:page>