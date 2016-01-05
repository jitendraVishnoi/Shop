<%@ taglib prefix="dsp" uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"%>
<%@ page import="atg.servlet.*"%>
<dsp:page>

	<dsp:importbean bean="/atg/dynamo/Configuration" />

	<head>
<title>store.war JSP Index Page</title>
	</head>
	<body>
		<dsp:importbean bean="/atg/endeca/assembler/droplet/InvokeAssembler" />
		<dsp:droplet name="InvokeAssembler">
			<dsp:param name="contentCollection" value="/content/Web/Hello Endeca" />
			<dsp:oparam name="output">
				<dsp:getvalueof var="searchBox" vartype="com.endeca.infront.assembler.ContentItem" param="contentItem" />
			</dsp:oparam>
		</dsp:droplet>
		<dsp:renderContentItem contentItem="${searchBox}" />

	</body>
</dsp:page>
<%-- @version $Id: //product/Eclipse/version/11.1/plugins/atg.project/templates/index.jsp#1 $$Change: 875535 $--%>
