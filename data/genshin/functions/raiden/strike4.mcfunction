##
 # strike2.mcfunction
 # Raiden strike at power level 0.
 #
 # Created by Lightning_11.
##

# Sound
execute at @a[tag=raiden4] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0 0.8
execute at @a[tag=raiden4] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 1 0.8

# Protection
execute at @a[tag=raiden4] run effect give @a[distance=..16] minecraft:fire_resistance 10 0 true
execute at @a[tag=raiden4] run effect give @a[distance=..16] minecraft:resistance 10 0 true
effect give @a[tag=raiden4] minecraft:resistance 10 2 true

# 8 targeted strikes, range 32
execute at @a[tag=raiden4] as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..32,sort=random,limit=8] at @s run summon lightning_bolt
execute at @a[tag=raiden4] as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..32] at @s anchored eyes run particle enchanted_hit ~ ~ ~ 0.5 1 0.5 0.1 20

# 8 random strikes, range 32
execute at @a[tag=raiden4] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","rand4"]}
execute at @a[tag=raiden4] run spreadplayers ~ ~ 0 32 false @e[tag=rand4]
execute at @e[tag=rand4] run summon lightning_bolt
kill @e[tag=rand4]

# Stats
scoreboard players add !aceStrikesLV4 stats 1