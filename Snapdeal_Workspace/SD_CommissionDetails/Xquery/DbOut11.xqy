xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.SD_CommisionDetails.org";
(:: import schema at "../Schemas/SD_CommisionDetails.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService";
(:: import schema at "../Resources/SD_CommissionDetails_BusinessService.xsd" ::)

declare variable $param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::) external;


declare function local:func($param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::)) as element() (:: schema-element(ns2:co_id) ::) {
    <ns2:co_id>
    {
      for $d in fn:distinct-values($param1/ns1:SD_CommissionDetails_BusinessServiceOutput/ns1:COMMISSION_ID)
        return
        <ns2:Commission_id>{$d}</ns2:Commission_id>
    }
    </ns2:co_id>
};

local:func($param1)
