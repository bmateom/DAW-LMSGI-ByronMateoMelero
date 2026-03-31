let $mitjana := round(
  avg(
    for $p in collection("CLASSICMODELS_BD")/payments/check
    return number($p/amount)
  )  
)

for $p in collection("CLASSICMODELS_BD")/payments/check
where number($p/amount) > $mitjana
order by number($p/amount) descending
return concat(
  "Compte: ", data($p/@number),
  ", Import: ", data($p/amount),
  ", Client: ", data($p/customer/customerName)
)