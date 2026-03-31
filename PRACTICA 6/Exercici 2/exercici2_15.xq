for $p in collection("CLASSICMODELS_BD")/payments/check
where $p/customer/@customerNumber = (
  for $c in collection("CLASSICMODELS_BD")/customers/customer
  where $c/salesRepEmployeeNumber = (
    for $e in collection("CLASSICMODELS_BD")/employees/employee
    where $e/lastName = ("Fixter", "King")
    return $e/@employeeNumber
  )
  return $c/@customerNumber
)
order by number($p/amount) descending
return concat(
  "ID: ", data($p/@number),
  ", Quantitat: ", data($p/amount)
)