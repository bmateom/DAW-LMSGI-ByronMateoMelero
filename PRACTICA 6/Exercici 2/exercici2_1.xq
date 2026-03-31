for $c in doc("customers.xml")/customers/customer
where exists($c/creditLimit)
  and number($c/creditLimit) >= 1160
  and number($c/creditLimit) <= 1165
return data($c/customerName)