<dsp:page>

<dsp:importbean bean="/OriginatingRequest" var="originatingRequest"/>
  
  <dsp:getvalueof var="contentItem" 
                  vartype="com.endeca.infront.assembler.ContentItem" 
                  value="${originatingRequest.contentItem}"/> 
<div class="banner">
<c:out value="${contentItem.message}" >No message</c:out>	
</div>
</dsp:page>