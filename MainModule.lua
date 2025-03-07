local httpService = game:GetService("HttpService")

--Luau typing (if anyone using your module uses that)
return function(id: number): (string,boolean)
	--Get the xml
	local success,xml = pcall(httpService.GetAsync,httpService,string.format("https://assetdelivery.rprxy.xyz/v1/asset?id=%i", id))

	--Returns the id if it was a success, otherwise return false
	return success and string.match(xml,"?id=(.-)</url>")
end
