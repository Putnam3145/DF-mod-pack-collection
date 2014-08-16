local G=_G
local _ENV={}


name="Sparking!"
author="Putnam"
raws_list={}

for k,v in G.ipairs(G.dfhack.internal.getDir(G.dfhack.getDFPath()..'/hack/mods/fortress replacers/sparking/raws')) do
	if v:find('.txt') then
		G.table.insert(raws_list,v)
	end
end

for k,v in G.ipairs(G.dfhack.internal.getDir(G.dfhack.getDFPath()..'/hack/mods/fortress replacers/sparking/raws/text')) do
	if v:find('.txt') then
		G.table.insert('text/'..raws_list,v)
	end
end

scripts_list='scripts'
scripts_folder_name='dragonball'
patch_init="dofile('dfhack.getDFPath()..'/hack/mods/fortress replacers/sparking/sparking.lua')"

patch_dfhack_init=[[
keybinding add Ctrl-X@dungeonmode/Default gui/advfort
keybinding add Ctrl-X@dungeonmode/Look gui/advfort
keybinding add Ctrl-T@dungeonmode dragonball_instant_transmission
modtools/syndrome-trigger -syndrome heal -command \dragonball_full_heal \UNIT_ID]]

description=[[
A mode where you play as Saiyans.
It's pretty silly.
]]
return _ENV