local G=_G
local _ENV={}


name="Molybdenum steel"
raws_list={"inorganic_molybdenum_fantastic.txt","reaction_molybdenum_fantastic.txt"}
author="Putnam"

function fileExists(filename)
	local file=G.io.open(filename,"rb")
	if file==nil then
		return
	else
		file:close()
		return true
	end
end

function checkInstalled()
	for k,v in G.pairs(raws_list) do
		if fileExists(G.dfhack.getDFPath().."/raw/objects/"..v) then
			return true,v
		end
	end
end

description=[[
Adds molybdenum and a process for making steel using 
it that requires no coal.
]]
return _ENV