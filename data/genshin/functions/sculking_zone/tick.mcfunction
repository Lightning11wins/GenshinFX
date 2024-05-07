##
 # sculking_zone/tick.mcfunction
 # Runs every tick on every sculking zone to maintain it.
 #
 # Created by Lightning_11.
##

# Store the health of the sculking zone
execute store result score !sculk_hp counter run data get entity @s Health

# Spawn trigger 1
execute if score !sculk_hp counter matches ..50 if entity @s[tag=spawn_symbiont] run summon witherstormmod:withered_symbiont ~ ~ ~ {PersistenceRequired:1,Tags:["sculk"]}
execute if score !sculk_hp counter matches ..50 if entity @s[tag=spawn_symbiont] run tag @s remove spawn_symbiont

# Spawn trigger 2
execute if score !sculk_hp counter matches ..75 if entity @s[tag=spawn_zombie] as @e[limit=2,sort=arbitrary] run summon witherstormmod:sickened_zombie ~ ~ ~ {PersistenceRequired:1,Tags:["sculk","spread"]}
execute if score !sculk_hp counter matches ..75 run tag @s remove spawn_zombie

# Spawn trigger 3
execute if score !sculk_hp counter matches ..60 if entity @s[tag=spawn_skeleton] run summon witherstormmod:sickened_skeleton ~ ~ ~ {PersistenceRequired:1,Tags:["sculk","spread"]}
execute if score !sculk_hp counter matches ..60 run tag @s remove spawn_skeleton

# Spawn trigger 4
execute if score !sculk_hp counter matches ..30 if entity @s[tag=spawn_spider] run summon witherstormmod:sickened_spider ~ ~ ~ {PersistenceRequired:1,Tags:["sculk","spread"]}
execute if score !sculk_hp counter matches ..30 run tag @s remove spawn_spider

# Spread mobs
spreadplayers ~ ~ 2 8 false @e[tag=sculk,tag=spread]
tag @e[tag=sculk] remove spread

# Give zone invulnerability when protecting mobs are nearby
execute if entity @e[tag=sculk,distance=..16] run data merge entity @s {Invulnerable:1}
execute unless entity @e[tag=sculk,distance=..16] run data merge entity @s {Invulnerable:0}
effect give @e[tag=sculk,distance=..16] glowing 1 0 true
