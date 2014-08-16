local G=_G
local _ENV={}


name="Putnam's stuff"
raws_list={"inorganic_putnamagic.txt","interaction_secret_putnamagic.txt","interaction_sphere_putnamagic.txt","reaction_adventure_putnamagic.txt",
'text/secret_animals.txt','text/secret_blight.txt','text/secret_chaos.txt','text/secret_earth.txt','text/secret_fire.txt','text/secret_fish.txt','text/secret_metal.txt','text/secret_mineral.txt','text/secret_salt.txt','text/secret_water.txt'}
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
Adds a bunch of secrets/curses made by Putnam.
All sphere based. Animals, chaos, earth, fire, fish,
metal, mineral, salt, water.
]]
return _ENV