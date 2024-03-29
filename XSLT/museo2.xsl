﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/">
    <museos>
      <xsl:apply-templates />
    </museos>
  </xsl:template>

  <xsl:template match="museo">
    <museo ubicacion="{@cidade} ({@pais})">
      <xsl:value-of select="@nome"/>
    </museo>
  </xsl:template>

</xsl:stylesheet>


