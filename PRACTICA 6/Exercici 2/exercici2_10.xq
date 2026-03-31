for $e in collection("CLASSICMODELS_BD")/employees/employee
where $e/lastName = "Patterson"
return $e/@employeeNumber