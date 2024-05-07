##
 # sword/diamond_start.mcfunction
 # Functions to start the diamond sword domain.
 #
 # Domain Center: -1050 125 1036
 # Domain Spawn: -1050 116 1092
 #
 # Created by Lightning_11.
##

# Run code common to any sword dungeon run.
function genshin:domain/sword/start

# Success message
execute unless score !swordDomain counter matches 1.. run tellraw @a[distance=..8] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Welcome to the ","color":"white"},{"text":"Diamond Tier Sword Domain","color":"blue"},{"text":".","color":"white"}]

# Spawn domain markers
execute unless score !swordDomain counter matches 1.. in genshin:abyss run summon armor_stand -1050 125 1036 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainSwordDiamond","domainSword","system","center","transient"]}

# Begin the domain
execute unless score !swordDomain counter matches 1.. run tag @a[distance=..12] add domainSwordDiamond
execute unless score !swordDomain counter matches 1.. in genshin:abyss run tp @a[tag=domainSwordDiamond] -1050 116 1092
execute unless score !swordDomain counter matches 1.. run gamemode adventure @a[tag=domainSwordDiamond]
execute unless score !swordDomain counter matches 1.. run scoreboard players set !swordDomain counter 10

# Announce
execute unless score !swordDomain counter matches 1.. run tellraw @a[distance=8..] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@a[tag=domainSwordDiamond]","color":"white"},{"text":" started the ","color":"white"},{"text":"Diamond Tier Sword Domain","color":"blue"},{"text":".","color":"white"}]

# Stats
execute unless score !swordDomain counter matches 1.. run scoreboard players add !domainSwordDiamondStarts 1