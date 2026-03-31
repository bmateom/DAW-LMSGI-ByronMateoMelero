for $p in collection("CLASSICMODELS_BD")/payments/check
where $p/customer/@customerNumber = 103
return $p/@number