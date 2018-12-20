<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes"/>
  

<!--4 test1.xml  仅有内容，没有标签-->
<!--=========================================================-->
<!--Template for aiml content-->
   <xsl:template match="*[contains(@class, ' aiml-d/categoryai ')]">
     <root>
	 <xsl:value-of select="."/>
	   <!--<xsl:copy-of select="."/>-->
	 </root>
   </xsl:template>
   
<!--=========================================================-->   
<!--template for dl element--> 
 <xsl:template match="*[contains(@class, ' topic/dlentry ')]">
 <xsl:choose>
  <xsl:when test="@content-aiml">
   <category>
   <pattern><xsl:value-of select="*[contains(@class, ' topic/dt ')]"/></pattern>
   <template><xsl:value-of select="*[contains(@class, ' topic/dd ')]"/></template>
   </category>
   </xsl:when>
   <xsl:otherwise>
   <category>
   <pattern><xsl:value-of select="*[contains(@class, ' topic/dt ')]"/></pattern>
   <template><xsl:value-of select="*[contains(@class, ' topic/dd ')]"/></template>
   </category>
   </xsl:otherwise>
  </xsl:choose> 
 </xsl:template>
 
 <!--<xsl:template match="*[contains(@class, ' topic/title ')]"/>-->
 
 <!--<xsl:template match="*[contains(@class, ' topic/dl ')]"/>-->
 <xsl:template match="*[contains(@class, ' topic/prolog ')]"/>
 <!--<xsl:template match="*[contains(@class, ' topic/shortdesc ')]"/>-->
 
<!--<xsl:template match="*[contains(@class, ' concept/concept ')]">
   <category>
    <pattern><xsl:value-of select="*[contains(@class, ' topic/title ')]"/></pattern>
	<template><xsl:value-of select="*[contains(@class, ' topic/shortdesc ')]"/></template>
   </category>
</xsl:template>-->


<xsl:template match="*[contains(@class,' topic/title ')]">
  <category>
    <pattern><xsl:value-of select="."/></pattern>
	<template><xsl:value-of select="*[contains(@class,' topic/shortdesc ')]"/></template>
  </category>
</xsl:template>

 
 <!--=====================================================-->

<!--template for topic element
<xsl:template match="*[contains(@class, ' topic/topic ')]">
<category>
<pattern><xsl:value-of select="normalize-space(./title)"/></pattern>
<template><xsl:value-of select="normalize-space(*[contains(@class, ' topic/body ')])"/></template>
</category>
</xsl:template>-->


</xsl:stylesheet>


