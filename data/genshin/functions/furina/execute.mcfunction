##
 # execute.mcfunction
 # Complete the execution.
 #
 # Created by Lightning_11.
##

# Drop the death sword
execute as @e[type=armor_stand,tag=focalors] run data modify entity @s NoGravity set value 0
execute as @e[type=armor_stand,tag=focalors] run data modify entity @s Marker set value 0
tag @e[type=armor_stand,tag=focalors] remove focalors

# Kill the player when it lands
schedule function genshin:furina/die 20t

# Stats
scoreboard players add !executions stats 1