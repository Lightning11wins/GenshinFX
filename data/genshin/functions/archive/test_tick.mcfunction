##
 # test.mcfunction
 # Functions to run the test domain.
 #
 # Center: -6 -40 12
 # Enemy Spawner 1A: -9 -40 13
 # Enemy Spawner 1B: -4 -40 13
 # Enemy Spawner 2A: -9 -40 7
 # Enemy Spawner 2B: -4 -40 7 
 # Reward: -4 -40 21
 #
 # Depricated
 #
 # Created by Lightning_11.
##

# Domain entity in domain selector: @a[tag=domainTest,distance=16..]
# Domain counter: !domainTest

# Wave 1
execute if score !domainTest counter matches 2 as @e[limit=2] as @e[tag=spawner1,sort=random,limit=1] at @s run summon zombie ~ ~ ~ {Tags:["domainTest","wave1"],IsBaby:0,CanBreakDoors:0,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{Name:'{"text":"Rotten Helm","color":"dark_green","italic":false}',color:6458368}}}]}
execute if score !domainTest counter matches 50 as @e[limit=3] as @e[tag=spawner2,sort=random,limit=1] at @s run summon skeleton ~ ~ ~ {Tags:["domainTest","spread","wave1"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{Name:'{"text":"Bony Helm","color":"white","italic":false}',color:13619151}}}]}
execute if score !domainTest counter matches 51 as @e[tag=spread] at @s run spreadplayers ~ ~ 0 2 false @s
execute if score !domainTest counter matches 120.. at @e[tag=center,tag=domainTest] if entity @e[distance=..16,tag=wave1] run scoreboard players set !domainTest counter 120

# Wave 2
execute if score !domainTest counter matches 130 as @e[tag=spawner,sort=random,limit=1] at @s run summon blaze ~ ~ ~ {Tags:["domainTest","wave2"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:13619151}}}],Attributes:[{Name:generic.armor,Base:5}]}
execute if score !domainTest counter matches 130 as @e[limit=5] as @e[tag=spawner,sort=random,limit=1] at @s run summon wither_skeleton ~ ~ ~ {Tags:["domainTest","spread","wave2"],ArmorItems:[{},{},{},{id:"minecraft:pumpkin",Count:1b,tag:{display:{Name:'{"text":"Cursed Pumpkin","color":"gray","italic":false}',Lore:['[{"text":"A mask which blinds one\'s ","color":"dark_gray","italic":false},{"text":"eyes","color":"gray"}]','[{"text":"to the destruction of one\'s ","color":"dark_gray","italic":false},{"text":"soul","color":"gray"}]']}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.armor,Base:2}]}
execute if score !domainTest counter matches 200.. at @e[tag=center,tag=domainTest] if entity @e[distance=..16,tag=wave2] run scoreboard players set !domainTest counter 200

# Victory
execute if score !domainTest counter matches 225 run give @a[tag=domainTest] tripwire_hook{display:{Name:'{"text":"Victory Key","color":"gold","italic":false}',Lore:['[{"text":"Awarded for completion of ","color":"yellow","italic":false},{"text":"test domain","color":"blue"},{"text":"."}]','{"text":"Place in any rewards chest to claim rewards.","color":"yellow","italic":false}']},domainSword:1} 1
execute if score !domainTest counter matches 225 run tag @a remove domainTest
execute if score !domainTest counter matches 225 run kill @e[tag=domainTest]

# Check for failed players
execute at @e[tag=center,tag=domainTest] run title @a[tag=domainTest,distance=16..] times 20 30 40
execute at @e[tag=center,tag=domainTest] run title @a[tag=domainTest,distance=16..] subtitle [{"text":"You left ","color":"red"},{"text":"Test Domain","color":"blue"}]
execute at @e[tag=center,tag=domainTest] run title @a[tag=domainTest,distance=16..] title {"text":"Challenge Failed","color":"red"}
execute at @e[tag=center,tag=domainTest] as @a[tag=domainTest,distance=16..] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@s","color":"blue"},{"text":" has failed the ","color":"red"},{"text":"Test Domain","color":"blue"},{"text":"!","color":"red"}]
execute at @e[tag=center,tag=domainTest] run tag @a[tag=domainTest,distance=16..] remove domainTest

# Check for domain failure
execute unless entity @a[tag=domainTest] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Test Domain","color":"blue"},{"text":" Failed!","color":"red"}]
execute unless entity @a[tag=domainTest] run kill @e[type=!armor_stand,tag=domainTest]
execute unless entity @a[tag=domainTest] at @e[tag=center,tag=domainTest] run kill @e[type=item,distance=..16]
execute unless entity @a[tag=domainTest] run kill @e[tag=domainTest]
execute unless entity @a[tag=domainTest] run scoreboard players set !domainTest counter -1

# Increase the domain counter by 1
execute if score !domainTest counter matches ..229 run scoreboard players add !domainTest counter 1

# Stats
scoreboard players add !archivedFunctionCalls stats 1