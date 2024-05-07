##
 # claymore/iron_start.mcfunction
 # Functions to start the iron claymore domain.
 #
 # Paste Location: -4101 80 988
 # Domain Center: -4050 124 1036
 # Domain Spawn: -4050 116 1092
 #
 # Created by Lightning_11.
##

# Run code common to any claymore dungeon run.
function genshin:domain/claymore/start

# Success message
execute unless score !claymoreDomain counter matches 1.. run tellraw @a[distance=..8] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Welcome to the ","color":"white"},{"text":"Iron Tier Claymore Domain","color":"blue"},{"text":".","color":"white"}]

# Spawn domain markers
execute unless score !claymoreDomain counter matches 1.. in genshin:abyss run summon armor_stand -4050 124 1036 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainClaymoreIron","domainClaymore","system","center","transient"]}

# Begin the domain
execute unless score !claymoreDomain counter matches 1.. run tag @a[distance=..12] add domainClaymoreIron
execute unless score !claymoreDomain counter matches 1.. in genshin:abyss run tp @a[tag=domainClaymoreIron] -4050 116 1092
execute unless score !claymoreDomain counter matches 1.. run bossbar set claymore max 200
execute unless score !claymoreDomain counter matches 1.. run bossbar set claymore color white
execute unless score !claymoreDomain counter matches 1.. run gamemode adventure @a[tag=domainClaymoreIron]
execute unless score !claymoreDomain counter matches 1.. run scoreboard players set !claymoreDomain counter 10

# Announce
execute unless score !claymoreDomain counter matches 1.. run tellraw @a[distance=8..] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@a[tag=domainClaymoreIron]","color":"white"},{"text":" started the ","color":"white"},{"text":"Iron Tier Claymore Domain","color":"blue"},{"text":".","color":"white"}]

# Stats
execute unless score !claymoreDomain counter matches 1.. run scoreboard players add !domainClaymoreIronStarts 1