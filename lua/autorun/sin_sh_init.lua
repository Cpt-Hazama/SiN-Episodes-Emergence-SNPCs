if(!SLVBase_Fixed) then
	include("slvbase/slvbase.lua")
	if(!SLVBase_Fixed) then return end
end
local addon = "SIN Episodes Emergence"
if(SLVBase_Fixed.AddonInitialized(addon)) then return end
if(SERVER) then
	AddCSLuaFile("autorun/sin_sh_init.lua")
	AddCSLuaFile("autorun/slvbase/slvbase.lua")
end
SLVBase_Fixed.AddDerivedAddon(addon,{tag = "SIN"})
if(SERVER) then
	Add_NPC_Class("CLASS_MUTANT")
end

game.AddParticles("particles/vman_explosion.pcf")
game.AddParticles("particles/centaur_spit.pcf")
game.AddParticles("particles/quadralex_rock.pcf")
for _, particle in pairs({
		"dusty_explosion_rockets",
		"centaur_spit",
		"quadralex_rock_smoke"
	}) do
	PrecacheParticleSystem(particle)
end

SLVBase_Fixed.InitLua("sin_init")

local Category = "SIN Episodes: Emergence"
SLVBase_Fixed.AddNPC(Category,"Quadralex","npc_quadralex")
SLVBase_Fixed.AddNPC(Category,"Hopper","npc_hopper")
SLVBase_Fixed.AddNPC(Category,"Leperkin","npc_leperkin")
