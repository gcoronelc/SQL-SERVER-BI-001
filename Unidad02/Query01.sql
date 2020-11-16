

select 
	o.OrderID, o.CustomerID, o.EmployeeID, o.OrderDate,  
	d.ProductID, d.UnitPrice * (1 - d.Discount) UnitPrice, 
	d.Quantity,  d.UnitPrice * (1 - d.Discount) * d.Quantity Importe
from dbo.Orders O
join dbo.[Order Details] d
on o.OrderID = d.OrderID;
go

select * from PRUEBA2_DM.dbo.DatosVentas;
go

select @@version;
go



