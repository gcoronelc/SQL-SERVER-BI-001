select 
	o.OrderID, o.CustomerID, 
	s.SupplierID, s.CompanyName SupplierName,
	c.CategoryID, c.CategoryName,
	p.ProductID, p.ProductName, 
	o.ShipCountry, o.ShipCity, 
	od.Quantity, od.UnitPrice * (1-od.Discount) UnitPrice,
	od.Quantity * od.UnitPrice * (1-od.Discount) Subtotal
from Northwind.dbo.Orders o
join Northwind.dbo.[Order Details] od on o.OrderID = od.OrderID 
join Northwind.dbo.Products p on od.ProductID = p.ProductID 
join Northwind.dbo.Categories c on p.CategoryID = c.CategoryID
join Northwind.dbo.Suppliers s on p.SupplierID = s.SupplierID;
go


select * from dbo.CursoProgramado
where IdProfesor is null;
go

select isnull(IdProfesor,'NONE'), count(1) cant_cursos
from dbo.CursoProgramado
where Activo = 1
group by  IdProfesor;
go


select * from Northwind.dbo.Customers;
go








go



select * from dbo.Ventas01;
select * from dbo.Ventas02;
select * from dbo.Ventas03;
go

truncate table dbo.Ventas01;
truncate table dbo.Ventas02;
truncate table dbo.Ventas03;
go


select * from dbo.Tabla1;
select * from dbo.Tabla2;
select * from dbo.Tabla3;
go


truncate table dbo.tabla1;
truncate table dbo.tabla2;
truncate table dbo.tabla3;
go

select * from dbo.DatosEmpleado;



