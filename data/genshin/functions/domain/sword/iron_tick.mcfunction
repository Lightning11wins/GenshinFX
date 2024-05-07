##
 # sword/iron_tick.mcfunction
 # Functions to run the iron sword domain.
 #
 # Created by Lightning_11.
##

# Wait for players to arive
execute if score !swordDomain counter matches 10..20 unless entity @a[distance=..16,tag=domainSwordIron] run scoreboard players set !swordDomain counter 10
execute if score !swordDomain counter matches 10 run fill -1053 130 1056 -1047 125 1056 air
execute if score !swordDomain counter matches 10 run fill -1047 131 1055 -1053 165 1056 air

# Close the domain doorways.
execute if score !swordDomain counter matches 10 run fill -1047 130 1016 -1053 125 1016 gray_stained_glass
execute if score !swordDomain counter matches 10 run fill -1053 131 1016 -1047 165 1017 barrier
execute if score !swordDomain counter matches 40 run fill -1053 130 1056 -1047 125 1056 gray_stained_glass
execute if score !swordDomain counter matches 40 run fill -1047 131 1055 -1053 165 1056 barrier

# Wave 1
execute if score !swordDomain counter matches 50 as @e[limit=2,sort=arbitrary] run summon witherstormmod:sickened_spider ~ ~ ~ {PersistenceRequired:1,Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.5},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:4},{Name:generic.armor_toughness,Base:2}],Tags:["domainSwordIron","wave1","domainBlock"]}
execute if score !swordDomain counter matches 50 as @e[limit=3,sort=arbitrary] as @a[tag=domainSwordIron,distance=..100,sort=arbitrary] run summon spider ~ ~ ~ {PersistenceRequired:1,Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.5},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:4},{Name:generic.armor_toughness,Base:2}],Tags:["domainSwordIron","wave1","domainBlock"]}
execute if score !swordDomain counter matches 50 run spreadplayers ~ ~ 0 12 under 160 false @e[tag=wave1]
execute if score !swordDomain counter matches 50 run scoreboard players set !swordDomain counter 60

# Wave 2
execute if score !swordDomain counter matches 100 as @e[limit=2,sort=arbitrary] run summon witherstormmod:sickened_zombie ~ ~ ~ {PersistenceRequired:1,CanPickUpLoot:1,ArmorItems:[{id:"minecraft:chainmail_boots",Count:1},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.attack_damage,Base:8},{Name:generic.armor_toughness,Base:2}],Tags:["domainSwordIron","wave2","domainBlock"]}
execute if score !swordDomain counter matches 100 as @e[limit=6,sort=arbitrary] as @a[tag=domainSwordIron,distance=..100,sort=arbitrary] run summon witherstormmod:sickened_zombie ~ ~ ~ {PersistenceRequired:1,CanPickUpLoot:1,ArmorItems:[{id:"minecraft:chainmail_boots",Count:1},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.attack_damage,Base:8},{Name:generic.armor_toughness,Base:2}],Tags:["domainSwordIron","wave2","domainBlock"]}
execute if score !swordDomain counter matches 100 run spreadplayers ~ ~ 0 12 under 160 false @e[tag=wave2]
execute if score !swordDomain counter matches 100 run scoreboard players set !swordDomain counter 110

# Wave 3
execute if score !swordDomain counter matches 150 as @e[limit=2,sort=arbitrary] run summon skeleton ~ ~ ~ {PersistenceRequired:1,Health:8f,HandItems:[{id:"minecraft:iron_sword",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1653275082,808338717,-1331832393,-1704117089],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.000F],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:4}],Tags:["domainSwordIron","wave3","domainBlock"]}
execute if score !swordDomain counter matches 150 as @e[limit=6,sort=arbitrary] as @a[tag=domainSwordIron,distance=..100,sort=arbitrary] run summon skeleton ~ ~ ~ {PersistenceRequired:1,Health:8f,HandItems:[{id:"minecraft:iron_sword",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1653275082,808338717,-1331832393,-1704117089],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.000F],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:4}],Tags:["domainSwordIron","wave3","domainBlock"]}
execute if score !swordDomain counter matches 150 run spreadplayers ~ ~ 0 12 under 160 false @e[tag=wave3]
execute if score !swordDomain counter matches 150 run scoreboard players set !swordDomain counter 160

# Check for failed players
execute as @a[tag=domainSwordIron] at @s unless entity @e[tag=center,tag=domainSwordIron,limit=1,sort=arbitrary,distance=..100] run tag @s add domainFailed
title @a[tag=domainFailed] times 20 30 40
title @a[tag=domainFailed] subtitle [{"text":"You left ","color":"red"},{"text":"Sword Domain","color":"blue"}]
title @a[tag=domainFailed] title {"text":"Challenge Failed","color":"red"}
execute as @a[tag=domainFailed,sort=arbitrary] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@s","color":"blue"},{"text":" has failed the ","color":"red"},{"text":"Sword Domain","color":"blue"},{"text":"!","color":"red"}]
gamemode survival @a[tag=domainFailed]
execute as @a[tag=domainFailed,sort=arbitrary] run scoreboard players add !domainSwordIronFails stats 1
tag @a[tag=domainFailed] remove domainSwordIron
tag @a[tag=domainFailed] remove domainFailed

# Check for domain failure
execute unless entity @a[tag=domainSwordIron] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Sword Domain","color":"blue"},{"text":" Failed!","color":"red"}]
execute unless entity @a[tag=domainSwordIron] run kill @e[type=!armor_stand,tag=domainSwordIron]
execute unless entity @a[tag=domainSwordIron] at @e[tag=center,tag=domainSwordIron] run kill @e[type=item,distance=..100]
execute unless entity @a[tag=domainSwordIron] run kill @e[tag=domainSwordIron]
execute unless entity @a[tag=domainSwordIron] run scoreboard players add !domainSwordIronLosses stats 1
execute unless entity @a[tag=domainSwordIron] run scoreboard players set !swordDomain counter -1

# Victory
execute if score !swordDomain counter matches 180 run scoreboard players add !domainSwordIronWins stats 1
execute if score !swordDomain counter matches 180 as @a[tag=domainSwordIron] run scoreboard players add !domainSwordIronVictors stats 1
execute if score !swordDomain counter matches 180 run give @a[tag=domainSwordIron] tripwire_hook{display:{Name:'{"text":"Victory Key","color":"gold","italic":false}',Lore:['[{"text":"Awarded for completion of the ","color":"yellow","italic":false},{"text":"Iron Teir Sword Domain","color":"blue"},{"text":"."}]','[{"text":"Place this in a ","color":"yellow","italic":false},{"text":"reward box","color":"blue"},{"text":" to claim your rewards!"}]']},domainSwordIron:1,domainKey:1}
execute if score !swordDomain counter matches 180 run tag @a remove domainSwordIron
execute if score !swordDomain counter matches 180 run kill @e[tag=domainSwordIron]
execute if score !swordDomain counter matches 180 run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Iron Tier Sword Domain","color":"blue"},{"text":" Completed!","color":"green"}]
execute if score !swordDomain counter matches 180 run fill -1047 130 1016 -1053 125 1016 air
execute if score !swordDomain counter matches 180 run fill -1053 131 1016 -1047 165 1017 air
execute if score !swordDomain counter matches 180 run fill -1053 130 1056 -1047 125 1056 air
execute if score !swordDomain counter matches 180 run fill -1047 131 1055 -1053 165 1056 air
execute if score !swordDomain counter matches 180 run scoreboard players set !swordDomain counter -1

# Increase the domain counter by 1
execute if score !swordDomain counter matches ..200 unless entity @e[distance=..100,tag=domainBlock,sort=arbitrary,limit=1] run scoreboard players add !swordDomain counter 1