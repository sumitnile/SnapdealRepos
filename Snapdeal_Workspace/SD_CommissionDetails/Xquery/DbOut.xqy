xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.SD_CommisionDetails.org";
(:: import schema at "../Schemas/SD_CommisionDetails.xsd" ::)

declare variable $elements as element(DbOut) external;

declare function local:func($elements as element(DbOut)) as element() (:: schema-element(ns1:CommissionDetailsOutput) ::) {
    <ns1:CommissionDetailsOutput>
     {
        for $x at $i in $elements/SD_CommissionDetails_BusinessServiceOutput
        return if($i>1)  
        then <CommissionDetCollection>
        <sellerCode>
        my code is getting value  
        </sellerCode>
        <consBillNumber>
        {$x/SD_CommissionDetails_BusinessServiceOutput/COMMISSION_ID}
        </consBillNumber>
        </CommissionDetCollection>
        else  <Names>{$x}</Names> 
           } 
    </ns1:CommissionDetailsOutput>
      
};

local:func($elements)
