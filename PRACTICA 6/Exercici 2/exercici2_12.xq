for $p in collection("CLASSICMODELS_BD")/payments/check
where $p/customer/@customerNumber = (
  for $c in collection("CLASSICMODELS_BD")/customers/customer
  where $c/customerName = "Atelier graphique"
  return $c/@customerNumber
)
return $p/@number