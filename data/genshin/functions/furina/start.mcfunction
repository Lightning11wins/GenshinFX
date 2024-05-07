##
 # start.mcfunction
 # Called at the start of Furina's burst.
 #
 # Created by Lightning_11.
##

# Reset scoreboards
scoreboard objectives remove hp
scoreboard objectives remove hpOld
scoreboard objectives remove fanfare
scoreboard objectives add hp health
scoreboard objectives add hpOld dummy
scoreboard objectives add fanfare dummy

# Initialize hpOld to hp (which is initialized automatically by the game)
execute as @a run scoreboard players operation @s hpOld = @s hp

# Tag Furina to activate her burst
tag @s add furinaBurst

# C2 Furina starts with 150 fainfare
# Everyone else has no fanfare
scoreboard players set @a fanfare -1
scoreboard players set @s fanfare 150

# Announce Furina's burst
title @a times 10 30 20
title @a subtitle [{"selector":"@s","color":"blue"},{"text":" has used Furina's burst","color":"blue"}]
title @a title {"text":"Rejoice!","color":"blue"}
playsound genshin:furina player @a ~ ~ ~ 1 1 0.8
playsound genshin:furina.boom player @a ~ ~ ~ 0.5 1

# Schedule the end of Furina's burst
effect give @s luck 30 0 true
schedule function genshin:furina/end 30s

# Stats
scoreboard players add !burstFurina stats 1
