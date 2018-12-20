<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="aimlTest.xsl"/>
<xsl:output method="xml" indent="yes"/>

<xsl:template match="/">
    <xsl:apply-templates select="*[contains(@class,' map/topicref ')]"/>
</xsl:template>

<xsl:template match="*[contains(@class,' map/map ')]/*[contains(@class,' topic/title ')]"/>

<xsl:template match="*[contains(@class,' map/topicref ')]" name="topicref">
  <xsl:variable name="hrefValue">
    <xsl:choose>
	  <xsl:when test="contains(@href,'#')">
	    <xsl:value-of select="substring-before(@href, '#')"/>
	  </xsl:when>
	  <xsl:otherwise>
	    <xsl:value-of select="@href"/>
	  </xsl:otherwise>
	</xsl:choose>
   </xsl:variable>
   <xsl:choose>
   <xsl:when test="$hrefValue and not($hrefValue='') and (empty(@scope) or @scope = 'local')">
    <xsl:apply-templates select="document($hrefValue, /)/*"/>
    </xsl:when>
  <xsl:when test="@navtitle">
     <xsl:value-of select="@navtitle"/>
      <xsl:apply-templates select="*[contains(@class,' map/topicref ')]"/>
  </xsl:when>
  <xsl:otherwise>
    <xsl:apply-templates select="*[contains(@class,' map/topicref ')]"/>
  </xsl:otherwise>
  </xsl:choose>
</xsl:template>	

</xsl:stylesheet>