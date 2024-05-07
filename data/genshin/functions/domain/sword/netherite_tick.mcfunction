##
 # sword/netherite_tick.mcfunction
 # Functions to run the netherite sword domain.
 #
 # Created by Lightning_11.
##

# Wait for players to arive
execute if score !swordDomain counter matches 10..20 unless entity @a[distance=..16,tag=domainSwordNetherite] run scoreboard players set !swordDomain counter 10
execute if score !swordDomain counter matches 10 run fill -1053 130 1056 -1047 125 1056 air
execute if score !swordDomain counter matches 10 run fill -1047 131 1055 -1053 165 1056 air

# Close the domain doorways.
execute if score !swordDomain counter matches 10 run fill -1047 130 1016 -1053 125 1016 gray_stained_glass
execute if score !swordDomain counter matches 10 run fill -1053 131 1016 -1047 165 1017 barrier
execute if score !swordDomain counter matches 40 run fill -1053 130 1056 -1047 125 1056 gray_stained_glass
execute if score !swordDomain counter matches 40 run fill -1047 131 1055 -1053 165 1056 barrier

# Wave 1
execute if score !swordDomain counter matches 50 as @e[limit=6,sort=arbitrary] run summon witherstormmod:sickened_spider ~ ~ ~ {PersistenceRequired:1,AbsorptionAmount:8f,Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.8},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:6}],Tags:["domainSwordNetherite","wave1","domainBlock"]}
execute if score !swordDomain counter matches 50 as @e[limit=5,sort=arbitrary] as @a[tag=domainSwordNetherite,distance=..100,sort=arbitrary] run summon spider ~ ~ ~ {PersistenceRequired:1,AbsorptionAmount:4f,Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.7},{Name:generic.attack_damage,Base:18},{Name:generic.armor,Base:6},{Name:generic.armor_toughness,Base:4}],Tags:["domainSwordNetherite","wave1","domainBlock"]}
execute if score !swordDomain counter matches 50 run spreadplayers ~ ~ 0 12 under 160 false @e[tag=wave1]
execute if score !swordDomain counter matches 50 run scoreboard players set !swordDomain counter 60

# Wave 2
execute if score !swordDomain counter matches 100 as @e[limit=6,sort=arbitrary] run summon witherstormmod:sickened_zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,AbsorptionAmount:8f,Tags:["domainSwordNetherite","wave2","domainBlock"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.knockback_resistance,Base:0.4},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:15},{Name:generic.armor_toughness,Base:10},{Name:zombie.spawn_reinforcements,Base:0.5}]}
execute if score !swordDomain counter matches 100 as @e[limit=12,sort=arbitrary] as @a[tag=domainSwordNetherite,distance=..100,sort=arbitrary] run summon witherstormmod:sickened_zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,AbsorptionAmount:8f,Tags:["domainSwordNetherite","wave2","domainBlock"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.knockback_resistance,Base:0.4},{Name:generic.attack_damage,Base:20},{Name:generic.armor,Base:15},{Name:generic.armor_toughness,Base:10},{Name:zombie.spawn_reinforcements,Base:0.5}]}
execute if score !swordDomain counter matches 100 run spreadplayers ~ ~ 0 12 under 160 false @e[tag=wave2]
execute if score !swordDomain counter matches 100 run scoreboard players set !swordDomain counter 110

# Wave 3
execute if score !swordDomain counter matches 150 as @e[limit=4,sort=arbitrary] run summon skeleton ~ ~ ~ {PersistenceRequired:1,Health:20f,HandItems:[{id:"minecraft:netherite_sword",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1653275082,808338717,-1331832393,-1704117089],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.000F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_damage,Base:25}],Tags:["domainSwordNetherite","wave3","domainBlock"]}
execute if score !swordDomain counter matches 150 as @e[limit=8,sort=arbitrary] as @a[tag=domainSwordNetherite,distance=..100,sort=arbitrary] run summon skeleton ~ ~ ~ {PersistenceRequired:1,Health:20f,HandItems:[{id:"minecraft:netherite_sword",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1653275082,808338717,-1331832393,-1704117089],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.000F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_damage,Base:25}],Tags:["domainSwordNetherite","wave3","domainBlock"]}
execute if score !swordDomain counter matches 150 run spreadplayers ~ ~ 0 12 under 160 false @e[tag=wave3]
execute if score !swordDomain counter matches 150 run scoreboard players set !swordDomain counter 160

# Check for failed players
execute as @a[tag=domainSwordNetherite] at @s unless entity @e[tag=center,tag=domainSwordNetherite,limit=1,sort=arbitrary,distance=..100] run tag @s add domainFailed
title @a[tag=domainFailed] times 20 30 40
title @a[tag=domainFailed] subtitle [{"text":"You left ","color":"red"},{"text":"Sword Domain","color":"blue"}]
title @a[tag=domainFailed] title {"text":"Challenge Failed","color":"red"}
execute as @a[tag=domainFailed,sort=arbitrary] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@s","color":"blue"},{"text":" has failed the ","color":"red"},{"text":"Sword Domain","color":"blue"},{"text":"!","color":"red"}]
gamemode survival @a[tag=domainFailed]
execute as @a[tag=domainFailed,sort=arbitrary] run scoreboard players add !domainSwordNetheriteFails stats 1
tag @a[tag=domainFailed] remove domainSwordNetherite
tag @a[tag=domainFailed] remove domainFailed

# Check for domain failure
execute unless entity @a[tag=domainSwordNetherite] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Sword Domain","color":"blue"},{"text":" Failed!","color":"red"}]
execute unless entity @a[tag=domainSwordNetherite] run kill @e[type=!armor_stand,tag=domainSwordNetherite]
execute unless entity @a[tag=domainSwordNetherite] at @e[tag=center,tag=domainSwordNetherite] run kill @e[type=item,distance=..100]
execute unless entity @a[tag=domainSwordNetherite] run kill @e[tag=domainSwordNetherite]
execute unless entity @a[tag=domainSwordNetherite] run scoreboard players add !domainSwordNetheriteLosses stats 1
execute unless entity @a[tag=domainSwordNetherite] run scoreboard players set !swordDomain counter -1

# Victory
execute if score !swordDomain counter matches 180 run scoreboard players add !domainSwordNetheriteWins stats 1
execute if score !swordDomain counter matches 180 as @a[tag=domainSwordNetherite] run scoreboard players add !domainSwordNetheriteVictors stats 1
execute if score !swordDomain counter matches 180 run give @a[tag=domainSwordNetherite] tripwire_hook{display:{Name:'{"text":"Victory Key","color":"gold","italic":false}',Lore:['[{"text":"Awarded for completion of the ","color":"yellow","italic":false},{"text":"Netherite Teir Sword Domain","color":"blue"},{"text":"."}]','[{"text":"Place this in a ","color":"yellow","italic":false},{"text":"reward box","color":"blue"},{"text":" to claim your rewards!"}]']},domainSwordNetherite:1,domainKey:1}
execute if score !swordDomain counter matches 180 run tag @a remove domainSwordNetherite
execute if score !swordDomain counter matches 180 run kill @e[tag=domainSwordNetherite]
execute if score !swordDomain counter matches 180 run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Netherite Tier Sword Domain","color":"blue"},{"text":" Completed!","color":"green"}]
execute if score !swordDomain counter matches 180 run fill -1047 130 1016 -1053 125 1016 air
execute if score !swordDomain counter matches 180 run fill -1053 131 1016 -1047 165 1017 air
execute if score !swordDomain counter matches 180 run fill -1053 130 1056 -1047 125 1056 air
execute if score !swordDomain counter matches 180 run fill -1047 131 1055 -1053 165 1056 air
execute if score !swordDomain counter matches 180 run scoreboard players set !swordDomain counter -1

# Increase the domain counter by 1
execute if score !swordDomain counter matches ..200 unless entity @e[distance=..100,tag=domainBlock,sort=arbitrary,limit=1] run scoreboard players add !swordDomain counter 1