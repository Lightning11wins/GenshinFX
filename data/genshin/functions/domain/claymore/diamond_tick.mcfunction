##
 # claymore/diamond_tick.mcfunction
 # Functions to run the diamond claymore domain.
 #
 # Created by Lightning_11.
##

# Wait for players to arrive.
execute if score !claymoreDomain counter matches 15..20 unless entity @a[distance=..16,tag=domainClaymoreDiamond] run scoreboard players set !claymoreDomain counter 15
execute if score !claymoreDomain counter matches 10 run fill -4053 130 1056 -4047 125 1056 air
execute if score !claymoreDomain counter matches 10 run fill -4047 131 1055 -4053 165 1056 air

# Close the domain doorways.
execute if score !claymoreDomain counter matches 10 run fill -4047 130 1016 -4053 125 1016 gray_stained_glass
execute if score !claymoreDomain counter matches 10 run fill -4053 131 1016 -4047 165 1017 barrier
execute if score !claymoreDomain counter matches 40 run fill -4053 130 1056 -4047 125 1056 gray_stained_glass
execute if score !claymoreDomain counter matches 40 run fill -4047 131 1055 -4053 165 1056 barrier

# Wave 1: Regenerating Zombies
execute if score !claymoreDomain counter matches 50 as @e[limit=8,sort=arbitrary] as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] run summon zombie ~ ~ ~ {PersistenceRequired:1,Health:50f,Tags:["domainClaymoreDiamond","spread","wave1","domainBlock"],ArmorItems:[{id:"diamond_boots",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1082172734,-43630142,-1098545210,-1306425815],Slot:"feet"}]}},{id:"diamond_leggings",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-745225931,-457685985,-2088294550,1100677282],Slot:"legs"}]}},{id:"diamond_chestplate",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2033989227,-1534311105,-1501040663,845718614],Slot:"chest"}]}},{id:"diamond_block",Count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:12},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:4}]}
execute if score !claymoreDomain counter matches 100 run effect give @e[tag=wave1] instant_damage 1 1 true
execute if score !claymoreDomain counter matches 100 as @e[tag=wave1] at @s run particle scrape ~ ~1 ~ 0.4 1 0.4 0.2 10
execute if score !claymoreDomain counter matches 100 as @e[tag=wave1,sort=random,limit=1] at @s run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 0.4 1.8
execute if score !claymoreDomain counter matches 100 if entity @e[tag=wave1] run scoreboard players set !claymoreDomain counter 60

# Wave 2: Random Swarm
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=20,sort=arbitrary] run summon zombie ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=20,sort=arbitrary] run summon zombie ~ ~-5 ~ {PersistenceRequired:1,IsBaby:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=10,sort=arbitrary] run summon husk ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=15,sort=arbitrary] run summon husk ~ ~-5 ~ {PersistenceRequired:1,IsBaby:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:desert"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:jungle"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:savanna"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:snow"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:swamp"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=2,sort=arbitrary] run summon zombie_villager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:taiga"},Offers:{}}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=30,sort=arbitrary] run summon skeleton ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],HandItems:[{id:"diamond_axe",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-424189938,577589049,-1769116025,-794913181],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.attack_damage,Base:4}]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=8,sort=arbitrary] run summon wither_skeleton ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"],HandItems:[{id:"diamond_axe",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-424189938,577589049,-1769116025,-794913181],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.attack_damage,Base:4}]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=25,sort=arbitrary] run summon spider ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=20,sort=arbitrary] run summon cave_spider ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=25,sort=arbitrary] run summon silverfish ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=20,sort=arbitrary] run summon endermite ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}
execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] as @e[limit=5,sort=arbitrary] run summon ravager ~ ~-5 ~ {PersistenceRequired:1,Tags:["domainClaymoreDiamond","wave2","domainBlock"]}

execute if score !claymoreDomain counter matches 160 as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary,gamemode=!spectator] run tag @e[tag=wave2,tag=!spread,sort=random,limit=35] add spread
execute if score !claymoreDomain counter matches 160 run kill @e[tag=wave2,tag=!spread]
execute if score !claymoreDomain counter matches 160 run kill @e[type=item,distance=..5]
execute if score !claymoreDomain counter matches 180 run effect give @e[tag=wave2] resistance 5 1 true
execute if score !claymoreDomain counter matches 180 run effect give @e[tag=wave2] strength 5 0 true
execute if score !claymoreDomain counter matches 180 run effect give @e[tag=wave2] speed 5 0 true
execute if score !claymoreDomain counter matches 200 if entity @e[tag=wave2] run scoreboard players set !claymoreDomain counter 175

# Wave 3: Splitting Silverfish
execute if score !claymoreDomain counter matches 210 as @e[limit=12,sort=arbitrary] as @a[tag=domainClaymoreDiamond,distance=..100,sort=arbitrary] run summon silverfish ~ ~ ~ {PersistenceRequired:1,AbsorptionAmount:2f,Health:30f,Tags:["domainClaymoreDiamond","spread","wave3","domainBlock","split"],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.attack_damage,Base:4}]}
execute if score !claymoreDomain counter matches 290 run tag @e[tag=split,sort=random,limit=1,nbt={AbsorptionAmount:0f}] add splitting
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] at @s as @e[sort=arbitrary,limit=3] run summon silverfish ~ ~ ~ {PersistenceRequired:1,Health:20f,Tags:["domainClaymoreDiamond","wave3","domainBlock"],Attributes:[{Name:generic.max_health,Base:20}]}
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] run data merge entity @s {AbsorptionAmount:2f}
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] at @s run playsound entity.turtle.egg_crack hostile @a[distance=..32] ~ ~1 ~ 1 0.5
execute if score !claymoreDomain counter matches 290 as @e[tag=splitting] at @s run particle block stone_bricks ~ ~0.15 ~ 0.2 0.1 0.2 0.2 20
execute if score !claymoreDomain counter matches 290 run tag @e[tag=splitting] remove splitting
execute if score !claymoreDomain counter matches 290 if entity @e[tag=wave3] run scoreboard players set !claymoreDomain counter 265

# Wave 4: Claymore Boss
execute if score !claymoreDomain counter matches 300 run summon zombie ~ ~1.5 ~ {PersistenceRequired:1b,Health:500f,Tags:["domainClaymoreDiamond","wave4","domainBlock","boss"],HandItems:[{id:"epicfight:diamond_greatsword",Count:1,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;2002769972,-410433980,-1575241379,1153501797],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"diamond_boots",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-792380855,-938589750,-1661069838,57990392],Slot:"feet"}]}},{id:"diamond_leggings",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-634043100,-1128577286,-1484155898,1401557115],Slot:"legs"}]}},{id:"diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;819302510,1049641660,-1846980640,-1952648352],Slot:"chest"}]}},{id:"diamond_helmet",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-158233637,1882737926,-1946484828,1278449930],Slot:"head"}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],active_effects:[{id:"mining_fatigue",amplifier:4b,duration:100000,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:20}]}
execute if score !claymoreDomain counter matches 320 as @e[tag=wave4] store result bossbar claymore value run data get entity @s Health
execute if score !claymoreDomain counter matches 320 if entity @e[tag=wave4] run bossbar set claymore visible true
execute if score !claymoreDomain counter matches 320 if entity @e[tag=wave4] run scoreboard players set !claymoreDomain counter 310
execute if score !claymoreDomain counter matches 321 run bossbar set claymore visible false

# Spread mobs.
spreadplayers ~ ~ 0 12 under 160 false @e[tag=domainBlock,tag=spread]
tag @e[tag=spread] remove spread

# Check for failed players.
execute as @a[tag=domainClaymoreDiamond] at @s unless entity @e[tag=center,tag=domainClaymoreDiamond,limit=1,sort=arbitrary,distance=..100] run tag @s add domainFailed
title @a[tag=domainFailed,sort=arbitrary] times 20 30 40
title @a[tag=domainFailed,sort=arbitrary] subtitle [{"text":"You left ","color":"red"},{"text":"Claymore Domain","color":"blue"}]
title @a[tag=domainFailed,sort=arbitrary] title {"text":"Challenge Failed","color":"red"}
execute as @a[tag=domainFailed,sort=arbitrary] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"] ","color":"dark_blue"},{"selector":"@s","color":"blue"},{"text":" has failed the ","color":"red"},{"text":"Claymore Domain","color":"blue"},{"text":"!","color":"red"}]
gamemode survival @a[tag=domainFailed,sort=arbitrary]
execute as @a[tag=domainFailed,sort=arbitrary] run scoreboard players add !domainClaymoreDiamondFails stats 1
tag @a[tag=domainFailed,sort=arbitrary] remove domainClaymoreDiamond
tag @a[tag=domainFailed,sort=arbitrary] remove domainFailed
bossbar set claymore players @a[tag=domainClaymoreDiamond]

# Check for domain failure.
execute unless entity @a[tag=domainClaymoreDiamond] run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Claymore Domain","color":"blue"},{"text":" Failed!","color":"red"}]
execute unless entity @a[tag=domainClaymoreDiamond] run bossbar set claymore visible false
execute unless entity @a[tag=domainClaymoreDiamond] run kill @e[type=!armor_stand,tag=domainClaymoreDiamond]
execute unless entity @a[tag=domainClaymoreDiamond] at @e[tag=center,tag=domainClaymoreDiamond] run kill @e[type=item,distance=..100]
execute unless entity @a[tag=domainClaymoreDiamond] run kill @e[tag=domainClaymoreDiamond]
execute unless entity @a[tag=domainClaymoreDiamond] run scoreboard players add !domainClaymoreDiamondLosses stats 1
execute unless entity @a[tag=domainClaymoreDiamond] run scoreboard players set !claymoreDomain counter -1

# Victory!
execute if score !claymoreDomain counter matches 330 run scoreboard players add !domainClaymoreDiamondWins stats 1
execute if score !claymoreDomain counter matches 330 as @a[tag=domainClaymoreDiamond] run scoreboard players add !domainClaymoreDiamondVictors stats 1
execute if score !claymoreDomain counter matches 330 run give @a[tag=domainClaymoreDiamond] tripwire_hook{display:{Name:'{"text":"Victory Key","color":"gold","italic":false}',Lore:['[{"text":"Awarded for completion of the ","color":"yellow","italic":false},{"text":"Diamond Teir Claymore Domain","color":"blue"},{"text":"."}]','[{"text":"Place this in a ","color":"yellow","italic":false},{"text":"reward box","color":"blue"},{"text":" to claim your rewards!"}]']},domainClaymoreDiamond:1,domainKey:1}
execute if score !claymoreDomain counter matches 330 run tag @a remove domainClaymoreDiamond
execute if score !claymoreDomain counter matches 330 run kill @e[tag=domainClaymoreDiamond]
execute if score !claymoreDomain counter matches 330 run tellraw @a [{"text":"[","color":"dark_blue"},{"text":"Domains","color":"yellow"},{"text":"]","color":"dark_blue"},{"text":" Diamond Tier Claymore Domain","color":"blue"},{"text":" Completed!","color":"green"}]
execute if score !claymoreDomain counter matches 330 run fill -4047 130 1016 -4053 125 1016 air
execute if score !claymoreDomain counter matches 330 run fill -4053 131 1016 -4047 165 1017 air
execute if score !claymoreDomain counter matches 330 run fill -4053 130 1056 -4047 125 1056 air
execute if score !claymoreDomain counter matches 330 run fill -4047 131 1055 -4053 165 1056 air
execute if score !claymoreDomain counter matches 330 run scoreboard players set !claymoreDomain counter -1

# Increment domain counter.
execute if score !claymoreDomain counter matches ..340 run scoreboard players add !claymoreDomain counter 1
# unless entity @e[distance=..100,tag=domainBlock,sort=arbitrary,limit=1]