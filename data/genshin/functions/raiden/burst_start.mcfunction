##
 # burst_start.mcfunction
 # Start Raiden's burst annimation.
 #
 # Created by Lightning_11.
##

# Effects
effect give @s resistance 10 4 true
effect give @s fire_resistance 10 0 true
effect give @s levitation 3 3 true
effect give @s mining_fatigue 10 100 true

# Music
stopsound @a
execute as @a at @s run playsound genshin:raiden.music record @s ~ ~ ~ 1 1 1
playsound genshin:raiden master @a ~ ~ ~ 1 1 1
playsound genshin:raiden.c1 master @a
playsound genshin:raiden.c2 master @a
playsound genshin:raiden.c3 master @a
playsound genshin:raiden.c4 master @a
playsound genshin:raiden.c5 master @a
playsound genshin:raiden.c6 master @a

# Start the annimation
tag @s add raiden_burst
scoreboard players set !frame counter 0

# Light marker
summon armor_stand ~ ~2 ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["system","light"]}
execute at @e[tag=light] run setblock ~ ~ ~ light[level=15] keep

# Stats
scoreboard players add !burstRaiden stats 1