<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/museos">
  <lugares>
    <xsl:apply-templates select="museo"/>
  </lugares>
</xsl:template>

<xsl:template match="museo">
  <lugar tipo="museo">
    <ubicacion nome="cidade">
      <xsl:value-of select="@cidade"/>
    </ubicacion>
    <ubicacion nome="pais">
      <xsl:value-of select="@pais"/>
    </ubicacion>
    <nome>
      <xsl:value-of select="@nome"/>
    </nome>
  </lugar>
</xsl:template>

</xsl:stylesheet>
