##
 # sword_netherite_tick.mcfunction
 # Functions to run the netherite sword domain.
 #
 # Created by Lightning_11.
##

# Entity in domain selector: @a[tag=domainSwordNetherite,distance=150..]
# Domain counter: !swordDomain

# Wait for players to arrive
execute if score !swordDomain counter matches 5.. at @e[tag=domainSwordNetherite,tag=center] if entity @a[distance=..16,tag=domainSwordNetherite] run scoreboard players set !swordDomain counter 5

# Wave 1
execute if score !swordDomain counter matches 20 as @e[limit=4,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon deeperdarker:sculk_snapper ~ ~ ~ {Tags:["domainSwordNetherite","wave1"]}
execute if score !swordDomain counter matches 22 as @e[limit=2,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon deeperdarker:shattered ~ ~ ~ {Tags:["domainSwordNetherite","wave1"]}
execute if score !swordDomain counter matches 25 as @e[tag=wave1] at @s run spreadplayers ~ ~ 0 12 under 20 false @s
execute if score !swordDomain counter matches 240.. at @e[tag=domainSwordNetherite,tag=center] if entity @e[distance=..150,tag=wave1] run scoreboard players set !swordDomain counter 240

# Wave 2
execute if score !swordDomain counter matches 250 as @e[limit=1,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon deeperdarker:stalker ~ ~ ~ {Tags:["domainSwordNetherite","wave2"]}
execute if score !swordDomain counter matches 252 as @e[limit=2,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon deeperdarker:shriek_worm ~ ~ ~ {Tags:["domainSwordNetherite","wave2"]}
execute if score !swordDomain counter matches 255 as @e[tag=wave2] at @s run spreadplayers ~ ~ 0 12 under 20 false @s
execute if score !swordDomain counter matches 500.. at @e[tag=domainSwordNetherite,tag=center] if entity @e[distance=..150,tag=wave2] run scoreboard players set !swordDomain counter 500

# Wave 3
execute if score !swordDomain counter matches 505 as @e[limit=4,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon witherstormmod:sickened_skeleton ~ ~ ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],Tags:["domainSwordNetherite","wave3"]}
execute if score !swordDomain counter matches 507 as @e[limit=2,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon witherstormmod:tentacle ~ ~ ~ {Tags:["domainSwordNetherite","wave3"]}
execute if score !swordDomain counter matches 510 as @e[tag=wave3] at @s run spreadplayers ~ ~ 0 12 under 20 false @s
execute if score !swordDomain counter matches 580 as @e[limit=2,sort=arbitrary] as @e[tag=domainSwordNetherite,tag=center] at @s run summon witherstormmod:withered_symbiont ~ ~ ~ {Tags:["domainSwordNetherite","wave3"]}
execute if score !swordDomain counter matches 950.. at @e[tag=domainSwordNetherite,tag=center] if entity @e[distance=..150,tag=wave3] run scoreboard players set !swordDomain counter 950

# Check for failed players
execute at @e[tag=center,tag=domainSwordNetherite] run title @a[tag=domainSwordNetherite,distance=150..] times 20 30 40
execute at @e[tag=center,tag=domainSwordNetherite] run title @a[tag=domainSwordNetherite,distance=150..] subtitle [{"text":"You left ","color":"red"},{"text":"Sword Domain","color":"blue"}]
execute at @e[tag=center,tag=domainSwordNetherite] run title @a[tag=domainSwordNetherite,distance=150..] title {"text":"Challenge Failed","color":"red"}
execute at @e[tag=center,tag=domainSwordNetherite] as @a[tag=domainSwordNetherite,distance=150..] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@s","color":"blue"},{"text":" has failed the ","color":"red"},{"text":"Sword Domain","color":"blue"},{"text":"!","color":"red"}]
execute at @e[tag=center,tag=domainSwordNetherite] run tag @a[tag=domainSwordNetherite,distance=150..] remove domainSwordNetherite

# Check for domain failure
execute unless entity @a[tag=domainSwordNetherite] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Sword Domain","color":"blue"},{"text":" Failed!","color":"red"}]
execute unless entity @a[tag=domainSwordNetherite] run kill @e[type=!armor_stand,tag=domainSwordNetherite]
execute unless entity @a[tag=domainSwordNetherite] at @e[tag=center,tag=domainSwordNetherite] run kill @e[type=item,distance=..150]
execute unless entity @a[tag=domainSwordNetherite] run kill @e[tag=domainSwordNetherite]
execute unless entity @a[tag=domainSwordNetherite] run scoreboard players set !swordDomain counter -1

# Victory
execute if score !swordDomain counter matches 975 run give @a[tag=domainSwordNetherite] tripwire_hook{display:{Name:'{"text":"Victory Key","color":"gold","italic":false}',Lore:['[{"text":"Awarded for completion of ","color":"yellow","italic":false},{"text":"netherite teir sword domain","color":"blue"},{"text":"."}]','{"text":"Place in any rewards chest to claim rewards.","color":"yellow","italic":false}']},domainSwordNetherite:1,domainKey:1} 1
execute if score !swordDomain counter matches 975 run tag @a remove domainSwordNetherite
execute if score !swordDomain counter matches 975 run kill @e[tag=domainSwordNetherite]
execute if score !swordDomain counter matches 975 run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Sword Domain","color":"blue"},{"text":" Completed!","color":"green"}]
execute if score !swordDomain counter matches 975 run scoreboard players set !swordDomain counter -1

# Increase the domain counter by 1
execute if score !swordDomain counter matches ..1000 run scoreboard players add !swordDomain counter 1

# Stats
scoreboard players add !archivedFunctionCalls stats 1