 let $nl := "&#10;" (:Salt de línia:)
 let $empleats := count(collection("CLASSICMODELS_BD")/employees/employee)
 let $clients := count(collection("CLASSICMODELS_BD")/customers/customer)
 let $xecs := count(collection("CLASSICMODELS_BD")/payments/check)
 return concat(
   "Número d'empleats: ", $empleats, $nl,
   "Número de clients: ", $clients, $nl,
   "Número de xecs: ", $xecs
 )