xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.SD_settledTxnDetailsViewmore.org";
(:: import schema at "../Schemas/SD_settledTxnViewmore.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SD_SettledTrxViewmore_BusinesService";
(:: import schema at "../Resources/SD_SettledTrxViewmore_BusinesService.xsd" ::)

declare variable $param1 as element() (:: schema-element(ns1:SD_SettledTrxViewmore_BusinesServiceOutputCollection) ::) external;

declare function local:func($param1 as element() (:: schema-element(ns1:SD_SettledTrxViewmore_BusinesServiceOutputCollection) ::)) as element() (:: schema-element(ns2:SettledTxn_Output) ::) {
    <ns2:SettledTxn_Output>
    {
    for $x at $i in $param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput
    return <ns2:transactionDetail>
    <ns2:shippingDetails>
    <ns2:awbNumber>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:AWBNUMBER)}</ns2:awbNumber>
    <ns2:courierDetail>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:COURIERDETAIL)}</ns2:courierDetail>
    </ns2:shippingDetails>
    <ns2:productDetails>
    <ns2:cashbackAmount>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:CASHBACKAMOUNT)}</ns2:cashbackAmount>
    <ns2:emiAmount>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:EMIAMOUNT)}</ns2:emiAmount>
    </ns2:productDetails>
    <ns2:financialDetails>
    <ns2:commisionAmount>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:COMMISIONAMOUNT)}</ns2:commisionAmount>
    <ns2:fulfillmentFee>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:FULFILLMENT_FEE)}</ns2:fulfillmentFee>
    <ns2:fulfillmentFeeWaiver>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:FULFILLMENT_FEE_WAIVER)}</ns2:fulfillmentFeeWaiver>
    <ns2:marketingFee>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:MARKETING_FEE)}</ns2:marketingFee>
    <ns2:paymentCollectionFee>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:PAY_COLLECTION_FEE)}</ns2:paymentCollectionFee>
    <ns2:courierFee>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:COURIER_FEE)}</ns2:courierFee>
    <ns2:merchantCut>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:MERCHANTCUT)}</ns2:merchantCut>
    </ns2:financialDetails>
    <ns2:transactionBreakup>
    <ns2:txnName>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:TXNNAME)}</ns2:txnName>
    <ns2:txnAmount>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:TXNAMOUNT)}</ns2:txnAmount>
    </ns2:transactionBreakup>
    <ns2:customerDetails>
    <ns2:customerName>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:CUSTOMERNAME)}</ns2:customerName>
    <ns2:customerCity>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:CUSTOMERCITY)}</ns2:customerCity>
    </ns2:customerDetails>
    <ns2:orderTimeline>
    <ns2:deliveredDate>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:DELIVEREDDATE)}</ns2:deliveredDate>
    <ns2:settlementDate>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:SETTLEMENTDATE)}</ns2:settlementDate>
    <ns2:returnDate>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:RETURNDATE)}</ns2:returnDate>
    </ns2:orderTimeline>
    <ns2:paymentDetail>
    <ns2:knockedOff>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:KNOCKEDOFF)}</ns2:knockedOff>
     <ns2:txnNetAmount>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:TXNAMOUNT)}</ns2:txnNetAmount>
    <ns2:paymentDate>{fn:data($param1/ns1:SD_SettledTrxViewmore_BusinesServiceOutput[$i]/ns1:PAYMENTDATE)}</ns2:paymentDate>
   
    </ns2:paymentDetail>
    </ns2:transactionDetail>    
    }
    </ns2:SettledTxn_Output>
};

local:func($param1)
