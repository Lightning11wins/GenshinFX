##
 # pump.mcfunction
 # Hydro pump initiation sequence.
 #
 # Created by Lightning_11.
##

tag @s add pump
scoreboard players set !pump counter 35
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 0.6 1