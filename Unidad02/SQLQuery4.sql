




select * from [DatosRegiones];
go

create procedure dbo.uspClientes
as
begin
select * from dbo.Customers;
end;
go

exec dbo.uspClientes;
go

begin tran;
go

select @@TRANCOUNT;
go


delete from [Order Details];

select * from [Order Details];
go


rollback;
go


begin tran;
go

select @@TRANCOUNT;
go


select * from dbo.PAGO;
go

truncate table dbo.pago;
go

rollback;
go



select * from [DatosDespacho] ;
go


select * from dbo.DatosClientes;
go

