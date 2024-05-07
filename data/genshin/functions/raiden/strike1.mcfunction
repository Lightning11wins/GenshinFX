##
 # strike1.mcfunction
 # Raiden strike at power level 0.
 #
 # Created by Lightning_11.
##

# Sound
execute at @a[tag=raiden1] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0.7 0.7

# 1 random strike, range 6
execute at @a[tag=raiden1] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","system","rand1"]}
execute at @a[tag=raiden1] run spreadplayers ~ ~ 0 6 false @e[tag=rand1]
execute at @e[tag=rand1] run summon lightning_bolt
kill @e[tag=rand1]

# Stats
scoreboard players add !aceStrikesLV1 stats 1