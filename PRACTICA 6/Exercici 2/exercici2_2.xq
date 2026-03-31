count(for $c in doc("Customers.xml")/customers/customer
where exists($c/creditLimit)
and number($c/creditLimit) > 1600
return $c)