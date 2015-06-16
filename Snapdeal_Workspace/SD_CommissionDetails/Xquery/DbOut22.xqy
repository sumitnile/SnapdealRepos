xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.SD_CommisionDetails.org";
(:: import schema at "../Schemas/SD_CommisionDetails.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService";
(:: import schema at "../Resources/SD_CommissionDetails_BusinessService.xsd" ::)

declare variable $param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::) external;

declare function local:func($param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::)) as element() (:: schema-element(ns2:xquery_out) ::) {
    <ns2:xquery_out>
    {
     for $d in fn:distinct-values($param1/ns1:SD_CommissionDetails_BusinessServiceOutput/ns1:COMMISSION_ID)
     
       for $h in $param1/ns1:SD_CommissionDetails_BusinessServiceOutput[ns1:COMMISSION_ID=$d]
        return
        <ns2:CommHeads>
        <ns2:commType>{$h/ns1:LINE_TYPE}</ns2:commType>
        <ns2:commAmount>{$h/ns1:AMOUNT}</ns2:commAmount>
        </ns2:CommHeads>
        }
    </ns2:xquery_out>
};

local:func($param1)
