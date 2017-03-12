<dsp:page>
    <dsp:importbean bean="/atg/commerce/catalog/ProductLookup"/>

    <shop:pageContainer>
        <jsp:body>

            <dsp:droplet name="ProductLookup">
                <%-- not passing product id as it is already there --%>
                <dsp:param name="id" value="${param.id}"/>
                <dsp:oparam name="output">
                    <table><tr>
                        <td class="leftPadding25px">
                            <dsp:getvalueof param="element.largeImage.url" var="imgPath"/>
                            <div><dsp:img page="${imgPath}" iclass="center-align"/></div>
                        </td>
                        <td><dsp:valueof param="element.displayName"/></td>
                    <tr></table>
                </dsp:oparam>
            </dsp:droplet>

        </jsp:body>
    </shop:pageContainer>
</dsp:page>

