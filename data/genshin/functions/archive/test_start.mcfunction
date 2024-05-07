##
 # test.mcfunction
 # Functions to start the test domain.
 # Execute on the player beginning the domain.
 # Use as <player> AND at <player> to set the player correctly.
 #
 # Center: -6 -40 12
 # Enemy Spawner 1A: -9 -40 13
 # Enemy Spawner 1B: -4 -40 13
 # Enemy Spawner 2A: -9 -40 7
 # Enemy Spawner 2B: -4 -40 7 
 # Reward: -4 -40 21
 #
 # Depricated
 #
 # Created by Lightning_11.
##

# Fail message
execute if score !domainTest counter matches 1.. run tellraw @s [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Sorry, this domain is currently in use by ","color":"white"},{"selector":"@a[tag=domainTest]","color":"blue"},{"text":"!","color":"white"}]

# Success message
execute unless score !domainTest counter matches 1.. run tellraw @s [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Welcome to ","color":"white"},{"text":"Test Domain","color":"blue"},{"text":".","color":"white"}]

# Spawn domain markers
execute unless score !domainTest counter matches 1.. run summon armor_stand -6 -40 12 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainTest","system","center"]}
execute unless score !domainTest counter matches 1.. run summon armor_stand -9 -40 13 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainTest","system","spawner","spawner1"]}
execute unless score !domainTest counter matches 1.. run summon armor_stand -4 -40 13 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainTest","system","spawner","spawner1"]}
execute unless score !domainTest counter matches 1.. run summon armor_stand -9 -40 7 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainTest","system","spawner","spawner2"]}
execute unless score !domainTest counter matches 1.. run summon armor_stand -4 -40 7 {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["domainTest","system","spawner","spawner2"]}

# Confirm reward chest
execute positioned -4 -40 21 unless entity @e[tag=domainReward,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}

# Add domain tag
execute unless score !domainTest counter matches 1.. run tag @a[distance=..8] add domainTest

# Activate domain
execute unless score !domainTest counter matches 1.. run scoreboard players set !domainTest counter 1

# Stats
scoreboard players add !archivedFunctionCalls stats 1