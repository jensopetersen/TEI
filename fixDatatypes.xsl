<xsl:stylesheet 
 xmlns:teix="http://www.tei-c.org/ns/Examples"
 xmlns:tei="http://www.tei-c.org/ns/1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:rng="http://relaxng.org/ns/structure/1.0"
 xmlns="http://www.tei-c.org/ns/1.0"
  exclude-result-prefixes="tei rng xsl teix"
 version="2.0">

<xsl:output 
   method="xml"
   encoding="utf-8"
   indent="yes"
   omit-xml-declaration="yes"/>

  <xsl:template match="tei:datatype">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <dataRef key="{concat('tei',rng:ref/@name)}"/>
    </xsl:copy>
  </xsl:template>
  
<!-- copy everything else -->

 <xsl:template match="*">
 <xsl:copy>
  <xsl:apply-templates select="@*"/>
  <xsl:apply-templates 
      select="*|comment()|processing-instruction()|text()"/>
 </xsl:copy>
</xsl:template>

<xsl:template match="@*|processing-instruction()|text()">
  <xsl:copy/>
</xsl:template>

<xsl:template match="comment()">
  <xsl:copy/>
</xsl:template>

</xsl:stylesheet>