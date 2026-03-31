let $clients := ("103", "112")
for $p in collection("CLASSICMODELS_BD")/payments/check
where $p/customer/@customerNumber = $clients
return $p/@number