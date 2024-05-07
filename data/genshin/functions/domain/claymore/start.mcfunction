##
 # claymore/start.mcfunction
 # Code run before starting any dungeon run in the claymore domain.
 # 
 # Paste Location: -4101 80 988
 # Domain Center: -4050 124 1036
 # Domain Spawn: -4050 116 1092
 #
 # Created by Lightning_11.
##

# Fail
execute if score !claymoreDomain counter matches 1.. run tellraw @a[distance=..8] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Sorry, the ","color":"white"},{"text":"Claymore Domain","color":"blue"},{"text":" is currently in use by ","color":"white"},{"selector":"@a[tag=domainClaymoreIron]","color":"blue"},{"selector":"@a[tag=domainClaymoreDiamond]","color":"blue"},{"selector":"@a[tag=domainClaymoreNetherite]","color":"blue"},{"text":"!","color":"white"}]

# Success
execute unless score !claymoreDomain counter matches 1.. if entity @e[tag=center,tag=domainClaymore,sort=arbitrary,limit=1] run scoreboard players set !claymoreDomain counter 2
execute if score !claymoreDomain counter matches 2 run tellraw @a[distance=..8] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Internal state corupted. Please contact developers to fix the ","color":"red"},{"text":"Claymore Domain","color":"blue"},{"text":"!","color":"red"}]

# Confirm reward chest(s)
execute in genshin:abyss positioned -4053 81 1002 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -4053 81 1006 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -4053 82 1008 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -4049 81 1008 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -4046 84 1007 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -4048 82 999 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -4046 81 1003 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}

# Reset Boss Bar
execute unless score !claymoreDomain counter matches 1.. run bossbar remove claymore
execute unless score !claymoreDomain counter matches 1.. run bossbar add claymore {"text":"Claymore Juggernaut","color":"gray","bold":"true"}
execute unless score !claymoreDomain counter matches 1.. run bossbar set claymore visible false
# bossbar set claymore style progress

# Stats
execute unless score !claymoreDomain counter matches 1.. run scoreboard players add !domainClaymoreStarts stats 1