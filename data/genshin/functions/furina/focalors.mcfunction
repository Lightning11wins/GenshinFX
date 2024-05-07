##
 # focalors.mcfunction
 # Execute the target of this function call like they're focalors!
 #
 # Created by Lightning_11.
##

# Start the depression music.
stopsound @s
stopsound @a * genshin:fontaine.focalors
execute at @s run playsound genshin:fontaine.focalors master @a ~ ~ ~ 1 1 0.5

# Mark the player as focalors.
tag @s add focalors

# Summon the execution sword.
execute at @s[tag=focalors] run summon armor_stand ~ ~10 ~ {NoGravity:1,Invulnerable:1,Small:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["system","focalors"],Passengers:[{id:"minecraft:item",Age:-32768,Health:5000,PickupDelay:32767,Invulnerable:1,Tags:["system","focalors"],Item:{id:"minecraft:carved_pumpkin",Count:1,tag:{CustomModelData:5}}}]}

# Execute the player when the song ends.
schedule function genshin:furina/execute 70s