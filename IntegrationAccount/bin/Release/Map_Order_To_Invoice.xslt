<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var" version="1.0" xmlns:ns0="http://IntegrationAccount.Output_OrderSchema">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/Order" />
  </xsl:template>
  <xsl:template match="/Order">
    <ns0:Invoice>
      <xsl:for-each select="OrdersDetails">
        <xsl:for-each select="OrderInfo">
          <xsl:for-each select="Name">
            <Orders>
              <Name>
                <xsl:value-of select="./text()" />
              </Name>
              <Price>
                <xsl:value-of select="../Price/text()" />
              </Price>
            </Orders>
          </xsl:for-each>
        </xsl:for-each>
      </xsl:for-each>
    </ns0:Invoice>
  </xsl:template>
</xsl:stylesheet>