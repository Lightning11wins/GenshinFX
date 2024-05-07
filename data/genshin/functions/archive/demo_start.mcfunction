##
 # sword_netherite_start.mcfunction
 # Functions to start the netherite sword domain.
 #
 # Created by Lightning_11.
##

# Fail message
execute if score !swordDomain counter matches 1.. run tellraw @s [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Sorry, the sword domain is currently in use by ","color":"white"},{"selector":"@a[tag=domainSwordNetherite]","color":"blue"},{"text":"!","color":"white"}]

# Success message
execute unless score !swordDomain counter matches 1.. run tellraw @s [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Welcome to ","color":"white"},{"text":"Iron Tier Sword Domain","color":"blue"},{"text":".","color":"white"}]

# Spawn domain markers
execute unless score !swordDomain counter matches 1.. run summon armor_stand 299 -14 32 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainSwordNetherite","system","center"]}
# execute unless score !swordDomain counter matches 1.. run summon armor_stand -9 -40 13 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainSwordNetherite","system","spawner","spawner1"]}
# execute unless score !swordDomain counter matches 1.. run summon armor_stand -4 -40 13 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainSwordNetherite","system","spawner","spawner1"]}
# execute unless score !swordDomain counter matches 1.. run summon armor_stand -9 -40 7 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainSwordNetherite","system","spawner","spawner2"]}
# execute unless score !swordDomain counter matches 1.. run summon armor_stand -4 -40 7 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainSwordNetherite","system","spawner","spawner2"]}

# Confirm reward chest
execute positioned 296 -58 -2 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}

# Begin the domain
execute unless score !swordDomain counter matches 1.. run tag @a[distance=..8] add domainSwordNetherite
execute unless score !swordDomain counter matches 1.. run tp @a[tag=domainSwordNetherite] 299 -23 88
execute unless score !swordDomain counter matches 1.. run scoreboard players set !swordDomain counter 1

# Stats
scoreboard players add !archivedFunctionCalls stats 1