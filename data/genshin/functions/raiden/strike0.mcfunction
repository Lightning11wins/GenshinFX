##
 # strike0.mcfunction
 # Raiden strike at power level 0.
 #
 # Created by Lightning_11.
##

# Sound
execute at @a[tag=raiden0] run playsound item.trident.thunder ambient @a ~ ~ ~ 0.8 1 0.5

# 1 random strike, range 16
execute at @a[tag=raiden0] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","system","rand0"]}
execute at @a[tag=raiden0] run spreadplayers ~ ~ 0 16 false @e[tag=rand0,limit=1]
execute at @e[tag=rand0] run summon lightning_bolt
kill @e[tag=rand0]

# Stats
scoreboard players add !aceStrikesLV0 stats 1