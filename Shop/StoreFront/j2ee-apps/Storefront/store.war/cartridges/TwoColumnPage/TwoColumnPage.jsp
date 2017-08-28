
<dsp:page>
  <dsp:importbean bean="/OriginatingRequest" var="originatingRequest"/>
  <dsp:getvalueof var="contentItem" vartype="com.endeca.infront.assembler.ContentItem" value="${originatingRequest.contentItem}"/> 
  
  <shop:pageContainer>
    <jsp:body>
        <%-- Render the header --%>
        <c:if test="${not empty contentItem.HeaderContent}">
          <c:forEach var="element" items="${contentItem.HeaderContent}">
            <dsp:renderContentItem contentItem="${element}"/>
          </c:forEach>
        </c:if>
        <%-- Render the main content --%>
        <div>
          <div id="ajaxContainer" >
            <div divId="ajaxRefreshableContent">
              <c:forEach var="element" items="${contentItem.mainContent}">
                <dsp:renderContentItem contentItem="${element}"/>
              </c:forEach>
            </div>
          </div>
        </div>
        <%-- Render the left content --%>     
        <div class="aside">
          <c:forEach var="element" items="${contentItem.SecondaryContent}">
            <dsp:renderContentItem contentItem="${element}"/>
          </c:forEach>
        </div>
    </jsp:body>
  </shop:pageContainer>
</dsp:page>
<%-- @version $Id: //hosting-blueprint/B2CBlueprint/version/11.1/Storefront/j2ee/store.war/cartridges/TwoColumnPage/TwoColumnPage.jsp#2 $$Change: 883241 $--%>
