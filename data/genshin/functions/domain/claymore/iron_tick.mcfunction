##
 # claymore/iron_tick.mcfunction
 # Functions to run the iron claymore domain.
 #
 # Created by Lightning_11.
##

# Wait for players to arive
execute if score !claymoreDomain counter matches 15..20 unless entity @a[distance=..16,tag=domainClaymoreIron] run scoreboard players set !claymoreDomain counter 15
execute if score !claymoreDomain counter matches 10 run fill -4053 130 1056 -4047 125 1056 air
execute if score !claymoreDomain counter matches 10 run fill -4047 131 1055 -4053 165 1056 air

# Close the domain doorways
execute if score !claymoreDomain counter matches 10 run fill -4047 130 1016 -4053 125 1016 gray_stained_glass
execute if score !claymoreDomain counter matches 10 run fill -4053 131 1016 -4047 165 1017 barrier
execute if score !claymoreDomain counter matches 40 run fill -4053 130 1056 -4047 125 1056 gray_stained_glass
execute if score !claymoreDomain counter matches 40 run fill -4047 131 1055 -4053 165 1056 barrier

# Wave 1: Regenerating Zombies
execute if score !claymoreDomain counter matches 50 as @e[limit=8,sort=arbitrary] as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] run summon zombie ~ ~ ~ {PersistenceRequired:1,Health:40f,Tags:["domainClaymoreIron","spread","wave1","domainBlock"],ArmorItems:[{id:"iron_boots",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1082172734,-43630142,-1098545210,-1306425815],Slot:"feet"}]}},{id:"iron_leggings",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-745225931,-457685985,-2088294550,1100677282],Slot:"legs"}]}},{id:"iron_chestplate",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2033989227,-1534311105,-1501040663,845718614],Slot:"chest"}]}},{id:"iron_block",Count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:4}]}
execute if score !claymoreDomain counter matches 100 run effect give @e[tag=wave1] instant_damage 1 0 true
execute if score !claymoreDomain counter matches 100 as @e[tag=wave1] at @s run particle scrape ~ ~1 ~ 0.4 1 0.4 0.2 8
execute if score !claymoreDomain counter matches 100 as @e[tag=wave1,sort=random,limit=1] at @s run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.4 1.8
execute if score !claymoreDomain counter matches 100 if entity @e[tag=wave1] run scoreboard players set !claymoreDomain counter 60

# Wave 2: Random Swarm
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=20,sort=arbitrary] run summon zombie ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=12,sort=arbitrary] run summon zombie ~ ~-5 ~ {PersistenceRequired:1,IsBaby:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=15,sort=arbitrary] run summon husk ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=10,sort=arbitrary] run summon husk ~ ~-5 ~ {PersistenceRequired:1,IsBaby:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:desert"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:jungle"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:savanna"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:snow"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:swamp"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:taiga"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=30,sort=arbitrary] run summon skeleton ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],HandItems:[{id:"minecraft:iron_axe",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-424189938,577589049,-1769116025,-794913181],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.attack_damage,Base:4}]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=5,sort=arbitrary] run summon wither_skeleton ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"],HandItems:[{id:"minecraft:iron_axe",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-424189938,577589049,-1769116025,-794913181],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.attack_damage,Base:4}]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=25,sort=arbitrary] run summon spider ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=15,sort=arbitrary] run summon cave_spider ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=20,sort=arbitrary] run summon silverfish ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=15,sort=arbitrary] run summon endermite ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=1,sort=arbitrary] run summon ravager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreIron","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] run tag @e[tag=wave2,tag=!spread,sort=random,limit=25] add spread
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] run kill @e[tag=wave2,tag=!spread]
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary,gamemode=!spectator] run kill @e[type=item,distance=..5]
execute if score !claymoreDomain counter matches 200 if entity @e[tag=wave2] run scoreboard players set !claymoreDomain counter 175

# Wave 3: Splitting Silverfish
execute if score !claymoreDomain counter matches 210 as @e[limit=8,sort=arbitrary] as @a[tag=domainClaymoreIron,distance=..100,sort=arbitrary] run summon silverfish ~ ~ ~ {PersistenceRequired:1,AbsorptionAmount:1f,Health:15f,Tags:["domainClaymoreIron","spread","wave3","domainBlock","split"],Attributes:[{Name:generic.max_health,Base:15}]}
execute if score !claymoreDomain counter matches 290 run tag @e[tag=split,sort=random,limit=1,nbt={AbsorptionAmount:0f}] add splitting
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] at @s as @e[sort=arbitrary,limit=2] run summon silverfish ~ ~ ~ {PersistenceRequired:1,Health:12f,Tags:["domainClaymoreIron","wave3","domainBlock"],Attributes:[{Name:generic.max_health,Base:12}]}
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] run data merge entity @s {AbsorptionAmount:1f}
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] at @s run playsound entity.turtle.egg_crack hostile @a[distance=..32] ~ ~1 ~ 1 0.5
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] at @s run particle block stone_bricks ~ ~0.15 ~ 0.2 0.1 0.2 0.2 20
execute if score !claymoreDomain counter matches 290 run tag @e[tag=splitting] remove splitting
execute if score !claymoreDomain counter matches 290 if entity @e[tag=wave3] run scoreboard players set !claymoreDomain counter 265

# Wave 4: Claymore Boss
execute if score !claymoreDomain counter matches 300 run summon zombie ~ ~1.5 ~ {PersistenceRequired:1,Health:200f,Tags:["domainClaymoreIron","wave4","domainBlock","boss"],HandItems:[{id:"epicfight:iron_greatsword",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1849968507,-745060338,-1789651113,-600929561],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"iron_boots",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1574123828,1342064200,-2113109981,-1617579221],Slot:"feet"}]}},{id:"iron_leggings",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-348882012,-1240184362,-1418022961,1131172817],Slot:"legs"}]}},{id:"iron_chestplate",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1421292986,543640431,-1116873524,-1891327922],Slot:"chest"}]}},{id:"iron_helmet",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-546809484,1388790026,-1673564432,76026486],Slot:"head"}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:4,Amplifier:5b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.knockback_resistance,Base:0.4},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:12}]}
execute if score !claymoreDomain counter matches 320 as @e[tag=wave4] store result bossbar claymore value run data get entity @s Health
execute if score !claymoreDomain counter matches 320 if entity @e[tag=wave4] run bossbar set claymore visible true
execute if score !claymoreDomain counter matches 320 if entity @e[tag=wave4] run scoreboard players set !claymoreDomain counter 310
execute if score !claymoreDomain counter matches 321 run bossbar set claymore visible false

# Spread mobs
spreadplayers ~ ~ 0 12 under 160 false @e[tag=domainBlock,tag=spread]
tag @e[tag=spread] remove spread

# Check for failed players
execute as @a[tag=domainClaymoreIron] at @s unless entity @e[tag=center,tag=domainClaymoreIron,limit=1,sort=arbitrary,distance=..100] run tag @s add domainFailed
title @a[tag=domainFailed,sort=arbitrary] times 20 30 40
title @a[tag=domainFailed,sort=arbitrary] subtitle [{"text":"You left ","color":"red"},{"text":"Claymore Domain","color":"blue"}]
title @a[tag=domainFailed,sort=arbitrary] title {"text":"Challenge Failed","color":"red"}
execute as @a[tag=domainFailed,sort=arbitrary] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@s","color":"blue"},{"text":" has failed the ","color":"red"},{"text":"Claymore Domain","color":"blue"},{"text":"!","color":"red"}]
gamemode survival @a[tag=domainFailed,sort=arbitrary]
execute as @a[tag=domainFailed,sort=arbitrary] run scoreboard players add !domainClaymoreIronFails stats 1
tag @a[tag=domainFailed,sort=arbitrary] remove domainClaymoreIron
tag @a[tag=domainFailed,sort=arbitrary] remove domainFailed
bossbar set claymore players @a[tag=domainClaymoreIron]

# Check for domain failure
execute unless entity @a[tag=domainClaymoreIron] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Claymore Domain","color":"blue"},{"text":" Failed!","color":"red"}]
execute unless entity @a[tag=domainClaymoreIron] run bossbar set claymore visible false
execute unless entity @a[tag=domainClaymoreIron] run kill @e[type=!armor_stand,tag=domainClaymoreIron]
execute unless entity @a[tag=domainClaymoreIron] at @e[tag=center,tag=domainClaymoreIron] run kill @e[type=item,distance=..100]
execute unless entity @a[tag=domainClaymoreIron] run kill @e[tag=domainClaymoreIron]
execute unless entity @a[tag=domainClaymoreIron] run scoreboard players add !domainClaymoreIronLosses stats 1
execute unless entity @a[tag=domainClaymoreIron] run scoreboard players set !claymoreDomain counter -1

# Victory
execute if score !claymoreDomain counter matches 330 run scoreboard players add !domainClaymoreIronWins stats 1
execute if score !claymoreDomain counter matches 330 as @a[tag=domainClaymoreIron] run scoreboard players add !domainClaymoreIronVictors stats 1
execute if score !claymoreDomain counter matches 330 run give @a[tag=domainClaymoreIron] tripwire_hook{display:{Name:'{"text":"Victory Key","color":"gold","italic":false}',Lore:['[{"text":"Awarded for completion of the ","color":"yellow","italic":false},{"text":"Iron Teir Claymore Domain","color":"blue"},{"text":"."}]','[{"text":"Place this in a ","color":"yellow","italic":false},{"text":"reward box","color":"blue"},{"text":" to claim your rewards!"}]']},domainClaymoreIron:1,domainKey:1}
execute if score !claymoreDomain counter matches 330 run tag @a remove domainClaymoreIron
execute if score !claymoreDomain counter matches 330 run kill @e[tag=domainClaymoreIron]
execute if score !claymoreDomain counter matches 330 run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Iron Tier Claymore Domain","color":"blue"},{"text":" Completed!","color":"green"}]
execute if score !claymoreDomain counter matches 330 run fill -4047 130 1016 -4053 125 1016 air
execute if score !claymoreDomain counter matches 330 run fill -4053 131 1016 -4047 165 1017 air
execute if score !claymoreDomain counter matches 330 run fill -4053 130 1056 -4047 125 1056 air
execute if score !claymoreDomain counter matches 330 run fill -4047 131 1055 -4053 165 1056 air
execute if score !claymoreDomain counter matches 330 run scoreboard players set !claymoreDomain counter -1

# Increase the domain counter by 1
execute if score !claymoreDomain counter matches ..340 run scoreboard players add !claymoreDomain counter 1
# unless entity @e[distance=..100,tag=domainBlock,sort=arbitrary,limit=1]