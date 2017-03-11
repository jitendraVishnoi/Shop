<dsp:page>
<!--<dsp:importbean bean="/atg/endeca/assembler/droplet/InvokeAssembler"/>



<dsp:droplet name="InvokeAssembler">
	<dsp:param name="contentCollection" value="/content/Web/Home Pages" />
	<dsp:oparam name="output">
		<dsp:getvalueof var="homePageContent" vartype="com.endeca.infront.assembler.ContentItem" param="contentItem" />
	</dsp:oparam>
</dsp:droplet>
-->

	<dsp:renderContentItem contentItem="${homePageContent}" />

</dsp:page>