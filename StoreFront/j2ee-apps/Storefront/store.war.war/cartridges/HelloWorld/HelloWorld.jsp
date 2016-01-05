<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="dsp" uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"%>

<dsp:importbean bean="/OriginatingRequest" var="originatingRequest" />
<dsp:getvalueof var="contentItem" vartype="com.endeca.infront.assembler.ContentItem" value="${originatingRequest.contentItem}" />
<div style="border-style: dotted; border-width: 1px; border-color: #999999; padding: 10px 10px">
	<div style="font-size: 150%;
color: ${contentItem.messageColor}">${contentItem.message}</div>
</div>