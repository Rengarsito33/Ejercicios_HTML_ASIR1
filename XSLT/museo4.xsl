<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  
  <xsl:key name="pais-key" match="museo" use="@pais" />
  <xsl:key name="cidade-key" match="museo" use="concat(@pais, '+', @cidade)" />
  
  <xsl:template match="/">
    <paises>
      <xsl:for-each select="museos/museo[generate-id() = generate-id(key('pais-key', @pais)[1])]">
        <pais nome="{@pais}">
          <xsl:for-each select="key('pais-key', @pais)[generate-id() = generate-id(key('cidade-key', concat(@pais, '+', @cidade))[1])]">
            <cidade nome="{@cidade}">
              <xsl:for-each select="key('cidade-key', concat(@pais, '+', @cidade))">
                <museo nome="{@nome}"/>
              </xsl:for-each>
            </cidade>
          </xsl:for-each>
        </pais>
      </xsl:for-each>
    </paises>
  </xsl:template>
  
</xsl:stylesheet>
