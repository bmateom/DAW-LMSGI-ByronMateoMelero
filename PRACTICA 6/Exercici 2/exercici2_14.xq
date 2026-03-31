for $p in collection("CLASSICMODELS_BD")/payments/check
where $p/customer/@customerNumber = (
  for $c in collection("CLASSICMODELS_BD")/customers/customer
  where $c/contact/contactLastName = "King"
    or $c/contact/contactLastName = "Schmitt"
  return $c/@customerNumber
)
order by number($p/amount) descending
return $p/amount


