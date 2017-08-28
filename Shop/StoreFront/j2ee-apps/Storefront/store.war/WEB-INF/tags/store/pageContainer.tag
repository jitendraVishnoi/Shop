<%@ tag language="java"%>
<%@ include file="/includes/taglibs.jspf" %>

<dsp:page>
<dsp:importbean bean="/atg/multisite/Site"/>
<dsp:importbean bean="/atg/endeca/assembler/droplet/InvokeAssembler"/>

<dsp:include page="/includes/pageStart.jsp">

</dsp:include>
<body class="main">
	<div class="main-content">
        <div class="padding5">
            <dsp:getvalueof bean="Site.productionURL" var="url"/>
                <a href="${url}"><h1 class="title">Shop</h1></a>
        </div>
        <dsp:droplet name="InvokeAssembler">
            <dsp:param name="contentCollection" value="/content/Shared/Search Box"/>

            <dsp:oparam name="output">
                <dsp:getvalueof var="searchBox" param="contentItem" vartype="com.endeca.infront.assembler.ContentItem"/>
            </dsp:oparam>
        </dsp:droplet>
        <dsp:renderContentItem contentItem="${searchBox}"/>
        <jsp:doBody />
	</div>
</body>
<dsp:include page="/includes/pageEnd.jsp">
</dsp:include> 
</dsp:page>