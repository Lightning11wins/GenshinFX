##
 # reset.mcfunction
 # Called when the data pack is loaded or reloaded.
 # Recreates scoreboards and teams and resummons entities
 # to ensure that everything runs smoothly.
 #
 # Created by Lightning_11.
##

# Counter scoreboard
scoreboard objectives remove counter
scoreboard objectives add counter dummy
scoreboard players set !aranara counter 0
scoreboard players set !nahida counter 0
scoreboard players set !furina counter 0
scoreboard players set !paimon counter 0
scoreboard players set !pump counter 0
scoreboard players set !permeate counter 0
scoreboard players set !frame counter -1
scoreboard players set !stargate counter 0

# Domains
scoreboard objectives add stats dummy
scoreboard players set !domainTest counter 0
scoreboard players set !swordDomain counter 0
scoreboard players set !claymoreDomain counter 0
scoreboard players set !bowDomain counter 0
scoreboard players set !polearmDomain counter 0
bossbar remove claymore

# Reload a ton of random trigger scoreboards
scoreboard objectives remove antigrief
scoreboard objectives add antigrief trigger
scoreboard objectives remove update
scoreboard objectives add update trigger
scoreboard objectives remove retexture
scoreboard objectives add retexture trigger
scoreboard objectives remove shield
scoreboard objectives add shield trigger
execute as @a[tag=zhongli] store result score @s shield run data get entity @s AbsorptionAmount

# Comunity Center
scoreboard objectives add fund trigger
scoreboard objectives add funding dummy
scoreboard objectives add fundingLeaderboard dummy {"text":"Funding Leaderboard","color":"green"}

# More scoreboards
scoreboard objectives remove damage
scoreboard objectives add damage custom:damage_dealt

# Remove Furina scoreboards
scoreboard objectives remove hp
scoreboard objectives remove hpOld
scoreboard objectives remove fanfair
schedule clear genshin:furina/end
schedule clear genshin:furina/execute

# Nahida targetting
team remove nahidaTarget
team add nahidaTarget
team modify nahidaTarget color green

# Spawn entities
function genshin:resummon

# Remove temp items
clear @a carved_pumpkin{temp:1}

# Tag reset
tag @a remove mod

# Stats
scoreboard players add !resets stats 1