##
 # sword/start.mcfunction
 # Code run before starting any dungeon run in the sword domain.
 #
 # Domain Center: -1050 125 1036
 # Domain Spawn: -1050 116 1092
 #
 # Created by Lightning_11.
##

# Fail message
execute if score !swordDomain counter matches 1.. run tellraw @a[distance=..8] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Sorry, the ","color":"white"},{"text":"Sword Domain","color":"blue"},{"text":" is currently in use by ","color":"white"},{"selector":"@a[tag=domainSwordIron]","color":"blue"},{"selector":"@a[tag=domainSwordDiamond]","color":"blue"},{"selector":"@a[tag=domainSwordNetherite]","color":"blue"},{"text":"!","color":"white"}]

execute unless score !swordDomain counter matches 1.. if entity @e[tag=center,tag=domainSword,sort=arbitrary,limit=1] run scoreboard players set !swordDomain counter 2
execute if score !swordDomain counter matches 2 run tellraw @a[distance=..8] [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"text":"Internal state corupted. Please contact developers to fix the ","color":"red"},{"text":"Sword Domain","color":"blue"},{"text":"!","color":"red"}]

# Confirm reward chest(s)
execute in genshin:abyss positioned -1053 81 1002 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -1053 81 1006 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -1053 82 1008 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -1049 81 1008 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -1046 84 1007 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -1048 82 999 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}
execute in genshin:abyss positioned -1046 81 1003 unless entity @e[tag=domainReward,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1,Silent:1,Invulnerable:1,Marker:1,Invisible:1,Tags:["system","domainReward"]}

# Stats
execute unless score !swordDomain counter matches 1.. run scoreboard players add !domainSwordStarts stats 1