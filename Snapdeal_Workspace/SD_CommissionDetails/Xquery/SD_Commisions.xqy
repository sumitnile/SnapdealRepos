xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.SD_Commissions.org";
(:: import schema at "../Schemas/SD_Commissions.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SD_CommissionDetails_BusinessService";
(:: import schema at "../Resources/SD_CommissionDetails_BusinessService.xsd" ::)

declare variable $param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::) external;

declare function local:func($param1 as element() (:: schema-element(ns1:SD_CommissionDetails_BusinessServiceOutputCollection) ::)) as element() (:: element(*, ns2:CommissionsType) ::) {
    <ns2:CommissionsType>
    {
    for $d in fn:distinct-values($param1/ns1:SD_CommissionDetails_BusinessServiceOutput/ns1:COMMISSION_ID)
         
       for $h at $i in $param1/ns1:SD_CommissionDetails_BusinessServiceOutput[ns1:COMMISSION_ID=$d]
           return if($i=1)
           then
           <ns2:Commission>
            <ns2:SELLERCODE>{fn:data($h/ns1:VENDOR)}</ns2:SELLERCODE>
        <ns2:CONSBILLNUMBER>{fn:data($h/ns1:CONS_BILL_NUMBER)}</ns2:CONSBILLNUMBER>
        <ns2:BILLINGENDDATE>{fn:data($h/ns1:BILLING_END_DATE)}</ns2:BILLINGENDDATE>
        <ns2:SELLERNAME>{fn:data($h/ns1:PARTY_NAME)}</ns2:SELLERNAME>
        <ns2:LOCATION>{fn:data($h/ns1:LOCATION)}</ns2:LOCATION>
        <ns2:ADDRESS1>{fn:data($h/ns1:ADDRESS1)}</ns2:ADDRESS1>
        <ns2:ADDRESS2>{fn:data($h/ns1:ADDRESS2)}</ns2:ADDRESS2>
        <ns2:ADDRESS3>{fn:data($h/ns1:ADDRESS3)}</ns2:ADDRESS3>
        <ns2:POSTAL_CODE>{fn:data($h/ns1:POSTAL_CODE)}</ns2:POSTAL_CODE>
        <ns2:CITY>{fn:data($h/ns1:CITY)}</ns2:CITY>
        <ns2:COUNTRY>{fn:data($h/ns1:COUNTRY)}</ns2:COUNTRY>      
        <ns2:Commissionid>{fn:data($h/ns1:COMMISSION_ID)}</ns2:Commissionid>
        </ns2:Commission>
           else()   
    }
    </ns2:CommissionsType>
};

local:func($param1)
