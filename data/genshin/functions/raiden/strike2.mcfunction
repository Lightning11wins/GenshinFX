##
 # strike2.mcfunction
 # Raiden strike at power level 0.
 #
 # Created by Lightning_11.
##

# Sound
execute at @a[tag=raiden2] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0.3 0.8
execute at @a[tag=raiden2] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 1.3 0.8

# Protection
effect give @a[tag=raiden2] minecraft:fire_resistance 10 0 true

# 1 targetted strike, range 5
execute at @a[tag=raiden2] as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..5,sort=random,limit=1] at @s run summon lightning_bolt
execute at @a[tag=raiden2] as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..5] at @s anchored eyes run particle enchanted_hit ~ ~ ~ 0.5 1 0.5 0.1 20

# Stats
scoreboard players add !aceStrikesLV2 stats 1