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
           <ns2:commission>
            <ns2:sellerCode>{fn:data($h/ns1:VENDOR)}</ns2:sellerCode>
        <ns2:consBillNumber>{fn:data($h/ns1:CONS_BILL_NUMBER)}</ns2:consBillNumber>
        <ns2:billingEndDate>{fn:data($h/ns1:BILLING_END_DATE)}</ns2:billingEndDate>
        <ns2:sellerName>{fn:data($h/ns1:PARTY_NAME)}</ns2:sellerName>
        <ns2:location>{fn:data($h/ns1:LOCATION)}</ns2:location>
        <ns2:address1>{fn:data($h/ns1:ADDRESS1)}</ns2:address1>
        <ns2:address2>{fn:data($h/ns1:ADDRESS2)}</ns2:address2>
        <ns2:address3>{fn:data($h/ns1:ADDRESS3)}</ns2:address3>
        <ns2:postalCode>{fn:data($h/ns1:POSTAL_CODE)}</ns2:postalCode>
        <ns2:city>{fn:data($h/ns1:CITY)}</ns2:city>
        <ns2:country>{fn:data($h/ns1:COUNTRY)}</ns2:country>   
        <ns2:lastUpdateDate>{fn:data($h/ns1:LAST_UPDATE_DATE)}</ns2:lastUpdateDate>
        <ns2:commissionId>{fn:data($h/ns1:COMMISSION_ID)}</ns2:commissionId>
        </ns2:commission>
           else()   
    }
    </ns2:CommissionsType>
};

local:func($param1)
