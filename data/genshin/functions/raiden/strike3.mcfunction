##
 # strike2.mcfunction
 # Raiden strike at power level 0.
 #
 # Created by Lightning_11.
##

# Sound
execute at @a[tag=raiden3] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0.2 0.8
execute at @a[tag=raiden3] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0.8 0.8

# Protection
effect give @a[tag=raiden3] minecraft:fire_resistance 10 0 true
effect give @a[tag=raiden3] minecraft:resistance 10 0 true

# Two targeted strikes, range 12
execute at @a[tag=raiden3] as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..12,sort=random,limit=2] at @s run summon lightning_bolt
execute at @a[tag=raiden3] as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..12] at @s anchored eyes run particle enchanted_hit ~ ~ ~ 0.5 1 0.5 0.1 20

# Stats
scoreboard players add !aceStrikesLV3 stats 1