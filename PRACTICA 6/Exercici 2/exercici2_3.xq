sum(
  for $p in doc("Payments.xml")/payments/check
  where $p/customer/salesRepEmployeeNumber = 1370
  return number($p/amount)
)