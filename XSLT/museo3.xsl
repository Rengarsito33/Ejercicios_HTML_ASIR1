<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="xml" indent="yes"/>

  <xsl:key name="cidade" match="museo" use="@cidade"/>

  <xsl:template match="/">
    <cidades>
      <xsl:for-each select="museos/museo[generate-id() = generate-id(key('cidade',@cidade)[1])]">
        <cidade nome="{@cidade}">
          <pais>
            <xsl:value-of select="@pais"/>
          </pais>
          <xsl:for-each select="key('cidade',@cidade)">
            <museo>
              <xsl:value-of select="@nome"/>
            </museo>
          </xsl:for-each>
        </cidade>
      </xsl:for-each>
    </cidades>
  </xsl:template>

</xsl:stylesheet>

