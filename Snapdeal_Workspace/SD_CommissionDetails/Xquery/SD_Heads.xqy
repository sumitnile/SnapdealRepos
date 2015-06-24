xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.SD_Heads.org";
(:: import schema at "../Schemas/SD_Heads.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService";
(:: import schema at "../Resources/SD_CommissionDetails_BusinessService.xsd" ::)

declare variable $param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::) external;

declare function local:func($param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::)) as element() (:: element(*, ns2:CommHeadsType) ::) {
    <ns2:CommHeadsType>
    {
    for $d in fn:distinct-values($param1/ns1:SD_CommissionDetails_BusinessServiceOutput/ns1:COMMISSION_ID)
         
       for $h at $i in $param1/ns1:SD_CommissionDetails_BusinessServiceOutput[ns1:COMMISSION_ID=$d]
           return 
        <ns2:commHead>
        <ns2:commType>{fn:data($h/ns1:LINE_TYPE)}</ns2:commType>
        <ns2:commAmount>{fn:data($h/ns1:AMOUNT)}</ns2:commAmount>
        <ns2:commissionId>{fn:data($h/ns1:COMMISSION_ID)}</ns2:commissionId>
        </ns2:commHead>
      }
     </ns2:CommHeadsType>
};

local:func($param1)
