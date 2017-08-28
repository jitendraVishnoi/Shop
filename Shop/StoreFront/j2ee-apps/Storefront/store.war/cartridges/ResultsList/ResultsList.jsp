<%-- 
  This page lays out the elements that make up the search results page.
    
  Required Parameters:
    contentItem
      The content item - results list type 
   
  Optional Parameters:

--%>
<dsp:page>
  <dsp:importbean bean="/atg/commerce/catalog/ProductLookup"/>
  <dsp:importbean bean="/atg/endeca/store/droplet/ActionURLDroplet"/>
  <dsp:importbean bean="/atg/multisite/Site"/>
  <dsp:importbean bean="/atg/search/droplet/GetClickThroughId"/>
  <dsp:importbean bean="/OriginatingRequest" var="originatingRequest"/>
  <dsp:getvalueof var="contentItem" vartype="com.endeca.infront.assembler.ContentItem" value="${originatingRequest.contentItem}"/>

      <%-- Render the search results. --%>
      
      <dsp:getvalueof var="size" value="${contentItem.totalNumRecs}"/>
      <dsp:getvalueof var="page" value="${contentItem.recsPerPage}"/>
      <c:set var="question"><dsp:valueof param="Ntt" valueishtml="true"/></c:set>
      <%-- Display the number of search results if this is a query search --%>
      <div id="atg_store_mainHeader">
        <div class="atg_store_searchResultsCount">
          <%-- Escape XML specific characters in search term to prevent using it for XSS attacks. --%>
          <span id="resultsCount"><c:out value="${size}"/></span>&nbsp;count&nbsp;
        </div>
      </div>


                <c:forEach var="record" items="${contentItem.records}" varStatus="loopStatus">
                  
                  <dsp:getvalueof var="index" value="${loopStatus.index}"/>
                  <dsp:getvalueof var="count" value="${loopStatus.count}"/>
                  <dsp:getvalueof var="productId" value="${record.attributes['product.repositoryId']}" />
                  <dsp:valueof value="${record.attributes}"/><br/>
                  
                </c:forEach>
                  

</dsp:page>
<%-- @version $Id: //hosting-blueprint/B2CBlueprint/version/11.1/Storefront/j2ee/store.war/cartridges/ResultsList/ResultsList.jsp#1 $$Change: 875535 $--%>
