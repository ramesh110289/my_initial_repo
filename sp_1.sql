--sp writing about inputs and outputs, check if there is a record that matches the barcode given in this procedure
create procedure sp_CardControl @workerbarcode as varchar(50)
as
begin
	declare @workername as varchar(50)
	select @workername=WorkerName from Workers where @workerbarcode=WorkerBarcode
		if @workername is null
		begin
			raiserror('wrong entry',16,1)
			return
		end
		else
		begin
			select @workername
		end
end

execute sp_CardControl @workerbarcode='6DD76F44-BF2F-456B-A8BA-6E27599CCC77'
