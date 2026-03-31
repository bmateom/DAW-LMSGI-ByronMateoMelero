round(
  avg(
    for $p in collection("CLASSICMODELS_BD")/payments/check
    return number($p/amount)
  )  
)
