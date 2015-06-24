xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns3="http://www.SD_Commission_proxy.org";
(:: import schema at "../Schemas/SD_Commission_proxy.xsd" ::)
declare namespace ns1="http://www.SD_Commissions.org";
(:: import schema at "../Schemas/SD_Commissions.xsd" ::)
declare namespace ns2="http://www.SD_Heads.org";
(:: import schema at "../Schemas/SD_Heads.xsd" ::)

declare variable $var1 as element() (:: schema-element(ns1:commisions) ::) external;
declare variable $var2 as element() (:: schema-element(ns2:CommHeads) ::) external;

declare function local:func($var1 as element() (:: schema-element(ns1:commisions) ::), 
                            $var2 as element() (:: schema-element(ns2:CommHeads) ::)) 
                            as element() (:: schema-element(ns3:TempoutXSL) ::) {
    <ns3:TempoutXSL>
    <ns3:commissionDetCollection>
    {$var1/*}
    </ns3:commissionDetCollection>
    <ns3:commHeads>
    {$var2/*}
    </ns3:commHeads>
    </ns3:TempoutXSL>
};

local:func($var1, $var2)
