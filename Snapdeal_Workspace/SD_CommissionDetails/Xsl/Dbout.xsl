<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/SD_CommissionDetails_BusinessService.xsd"/>
        <oracle-xsl-mapper:rootElement name="SD_CommissionDetails_BusinessServiceOutputCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/SD_CommissionDetails_BusinessService.xsd"/>
        <oracle-xsl-mapper:rootElement name="SD_commissionDetailsOB"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE JUN 16 16:12:15 IST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:SD_commissionDetailsOB>
      <xsl:for-each select="/ns0:SD_CommissionDetails_BusinessServiceOutputCollection/ns0:SD_CommissionDetails_BusinessServiceOutput">
        <ns0:SD_CommissionDetails_BusinessServiceOutput>
          <ns0:COMMISSION_ID>
            <xsl:value-of select="ns0:COMMISSION_ID"/>
          </ns0:COMMISSION_ID>
          <ns0:VENDOR>
            <xsl:value-of select="ns0:VENDOR"/>
          </ns0:VENDOR>
          <ns0:CONS_BILL_NUMBER>
            <xsl:value-of select="ns0:CONS_BILL_NUMBER"/>
          </ns0:CONS_BILL_NUMBER>
          <ns0:BILLING_END_DATE>
            <xsl:value-of select="ns0:BILLING_END_DATE"/>
          </ns0:BILLING_END_DATE>
          <ns0:PARTY_NAME>
            <xsl:value-of select="ns0:PARTY_NAME"/>
          </ns0:PARTY_NAME>
          <ns0:LOCATION>
            <xsl:value-of select="ns0:LOCATION"/>
          </ns0:LOCATION>
          <ns0:ADDRESS1>
            <xsl:value-of select="ns0:ADDRESS1"/>
          </ns0:ADDRESS1>
          <ns0:ADDRESS2>
            <xsl:value-of select="ns0:ADDRESS2"/>
          </ns0:ADDRESS2>
          <ns0:ADDRESS3>
            <xsl:value-of select="ns0:ADDRESS3"/>
          </ns0:ADDRESS3>
          <ns0:POSTAL_CODE>
            <xsl:value-of select="ns0:POSTAL_CODE"/>
          </ns0:POSTAL_CODE>
          <ns0:CITY>
            <xsl:value-of select="ns0:CITY"/>
          </ns0:CITY>
          <ns0:COUNTRY>
            <xsl:value-of select="ns0:COUNTRY"/>
          </ns0:COUNTRY>
          <ns0:AMOUNT>
            <xsl:value-of select="ns0:AMOUNT"/>
          </ns0:AMOUNT>
          <ns0:LINE_TYPE>
            <xsl:value-of select="ns0:LINE_TYPE"/>
          </ns0:LINE_TYPE>
        </ns0:SD_CommissionDetails_BusinessServiceOutput>
      </xsl:for-each>
    </ns0:SD_commissionDetailsOB>
  </xsl:template>
</xsl:stylesheet>