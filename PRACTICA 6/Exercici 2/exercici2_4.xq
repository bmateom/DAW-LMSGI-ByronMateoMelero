for $e in doc("Employees.xml")/employees/employee
order by number($e/@employeeNumber)
return concat(
  "Nom:", data($e/firstName), " ", data($e/lastName),
  ", Numero d'empleat:", data($e/@employeeNumber), 
  ", Oficina assignada:", data($e/office/City)
)