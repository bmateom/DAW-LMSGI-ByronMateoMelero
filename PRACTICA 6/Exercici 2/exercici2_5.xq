let $mitjana := avg(
  for $p in doc("Payments.xml")/payments/check
  return number($p/amount)
)
for $p in doc("Payments.xml")/payments/check
where number($p/amount) > $mitjana
order by data($p/@number)
return data($p/@number)