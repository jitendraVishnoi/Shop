<%--
  ~ Copyright 2001, 2012, Oracle and/or its affiliates. All rights reserved.
  ~ Oracle and Java are registered trademarks of Oracle and/or its
  ~ affiliates. Other names may be trademarks of their respective owners.
  ~ UNIX is a registered trademark of The Open Group.

 
  This page lays out the elements that make up a one column page.
    
  Required Parameters:
    contentItem
      The one column page content item to render.
   
  Optional Parameters:

  NOTES:
    The "rootContentItem" request-scoped variable (request attribute), which is used here,
      is set in the "AssemblerPipelineServlet" Nucleus component.
--%>
<dsp:page>
  <dsp:importbean bean="/OriginatingRequest" var="originatingRequest"/>
  <dsp:getvalueof var="content" vartype="com.endeca.infront.assembler.ContentItem" value="${originatingRequest.contentItem}"/> 

  <shop:pageContainer>
        <%-- Render the header --%>
        <c:if test="${not empty content.HeaderContent}">
          <c:forEach var="element" items="${content.headerContent}">
            <dsp:renderContentItem contentItem="${element}"/>
          </c:forEach>
        </c:if>
        <%-- Render the main content --%>
          <c:forEach var="element" items="${content.mainContent}">
             <dsp:renderContentItem contentItem="${element}"/>
           </c:forEach>
  </shop:pageContainer>
</dsp:page>
<%-- @version $Id: //hosting-blueprint/B2CBlueprint/version/11.1/Storefront/j2ee/store.war/cartridges/OneColumnPage/OneColumnPage.jsp#2 $$Change: 883241 $--%>
