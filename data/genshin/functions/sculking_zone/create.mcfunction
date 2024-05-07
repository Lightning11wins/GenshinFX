##
 # sculking_zone/create.mcfunction
 # Declares a new sculking zone with no data.
 # Example Usage: /execute positioned 93 -60 5 run function genshin:sculking_zone/create
 #
 # To add data, use commands such as the following:
 # /tag @e[tag=sculking_zone] add spawn_symbiont
 # /tag @e[tag=sculking_zone] add spawn_zombie
 # /tag @e[tag=sculking_zone] add spawn_skeleton
 # /tag @e[tag=sculking_zone] add spawn_spider
 #
 # Created by Lightning_11.
##

# Summon the marker.
summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["sculking_zone_marker","system"]}

# Summon new sculking zone.
# Note: This is not a system entity, so it can be targetted by attacks.
summon slime ~ ~ ~ {NoGravity:1,Silent:1,DeathLootTable:"minecraft:empty",PersistenceRequired:1,NoAI:1,CanPickUpLoot:0,Health:100,Size:2,Tags:["sculking_zone"],CustomName:'{"text":"sculking_zone","color":"#005D81"}',ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1}]}

# Place block marker.
setblock ~ ~ ~ deeperdarker:sculk_stone_wall