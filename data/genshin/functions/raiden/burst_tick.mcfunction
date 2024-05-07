##
 # burst.mcfunction
 # Play Raiden burst annimation.
 #
 # Created by Lightning_11.
##

# Screen lock
execute if score !frame counter matches ..60 rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# Play onscreen annimation
execute if score !frame counter matches 0 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:100,temp:1}
execute if score !frame counter matches 1 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:101,temp:1}
execute if score !frame counter matches 2 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:102,temp:1}
execute if score !frame counter matches 3 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:103,temp:1}
execute if score !frame counter matches 4 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:104,temp:1}
execute if score !frame counter matches 5 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:105,temp:1}
execute if score !frame counter matches 6 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:106,temp:1}
execute if score !frame counter matches 7 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:107,temp:1}
execute if score !frame counter matches 8 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:108,temp:1}
execute if score !frame counter matches 9 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:109,temp:1}
execute if score !frame counter matches 10 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:110,temp:1}
execute if score !frame counter matches 11 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:111,temp:1}
execute if score !frame counter matches 12 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:112,temp:1}
execute if score !frame counter matches 13 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:113,temp:1}
execute if score !frame counter matches 14 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:114,temp:1}
execute if score !frame counter matches 15 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:115,temp:1}
execute if score !frame counter matches 16 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:116,temp:1}
execute if score !frame counter matches 17 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:117,temp:1}
execute if score !frame counter matches 18 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:118,temp:1}
execute if score !frame counter matches 19 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:119,temp:1}
execute if score !frame counter matches 20 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:120,temp:1}
execute if score !frame counter matches 21 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:121,temp:1}
execute if score !frame counter matches 22 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:122,temp:1}
execute if score !frame counter matches 23 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:123,temp:1}
execute if score !frame counter matches 24 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:124,temp:1}
execute if score !frame counter matches 25 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:125,temp:1}
execute if score !frame counter matches 26 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:126,temp:1}
execute if score !frame counter matches 27 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:127,temp:1}
execute if score !frame counter matches 28 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:128,temp:1}
execute if score !frame counter matches 29 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:129,temp:1}
execute if score !frame counter matches 30 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:130,temp:1}
execute if score !frame counter matches 31 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:131,temp:1}
execute if score !frame counter matches 32 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:132,temp:1}
execute if score !frame counter matches 33 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:133,temp:1}
execute if score !frame counter matches 34 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:134,temp:1}
execute if score !frame counter matches 35 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:135,temp:1}
execute if score !frame counter matches 36 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:136,temp:1}
execute if score !frame counter matches 37 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:137,temp:1}
execute if score !frame counter matches 38 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:138,temp:1}
execute if score !frame counter matches 39 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:139,temp:1}
execute if score !frame counter matches 40 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:140,temp:1}
execute if score !frame counter matches 41 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:141,temp:1}
execute if score !frame counter matches 42 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:142,temp:1}
execute if score !frame counter matches 43 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:143,temp:1}
execute if score !frame counter matches 44 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:144,temp:1}
execute if score !frame counter matches 45 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:145,temp:1}
execute if score !frame counter matches 46 run item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:146,temp:1}

# Location lock
execute if score !frame counter matches 45 run effect give @s levitation 10 255 true
execute if score !frame counter matches 45 run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","raidenLock"]}
execute if score !frame counter matches 45..180 positioned as @e[tag=raidenLock,limit=1] run tp @s ~ ~ ~
execute if score !frame counter matches 180 run kill @e[tag=raidenLock]

# End onscreen annimation with particle transition
execute if score !frame counter matches 47 run effect clear @s mining_fatigue
execute if score !frame counter matches 47 run item replace entity @s weapon.offhand with air
execute if score !frame counter matches 47 run item replace entity @s weapon.mainhand with witherstormmod:command_block_sword{HideFlags:4,Unbreakable:1,raiden:1,CustomModelData:1}
# {display:{Name:'[{"text":"M","color":"#C800D6","bold":true,"italic":false},{"text":"i","color":"#C100D7"},{"text":"s","color":"#BB00D9"},{"text":"t","color":"#B500DB"},{"text":"s","color":"#AE00DD"},{"text":"p","color":"#A800DF"},{"text":"l","color":"#A200E1"},{"text":"i","color":"#9C00E3"},{"text":"t","color":"#9500E5"},{"text":"t","color":"#8F00E7"},{"text":"e","color":"#8900E9"},{"text":"r","color":"#8200EB"},{"text":" ","color":"#7C00ED"},{"text":"R","color":"#7600EF"},{"text":"e","color":"#7000F1"},{"text":"f","color":"#6900F3"},{"text":"o","color":"#6300F5"},{"text":"r","color":"#5D00F7"},{"text":"g","color":"#5600F9"},{"text":"e","color":"#5000FB"},{"text":"d","color":"#4A00FD"}]',Lore:['{"text":"Engraved upon this reforged","color":"#7600EE","italic":false}','{"text":"blade shines the quote:","color":"#7600EE","italic":false}','{"text":" "}','[{"text":"  ","bold":true,"italic":true},{"text":"\\"","color":"#6600FF","bold":false},{"text":"P","color":"#5000ff"},{"text":"e","color":"#6000f9"},{"text":"r","color":"#7100f4"},{"text":"p","color":"#8200ef"},{"text":"e","color":"#9300ea"},{"text":"t","color":"#a300e5"},{"text":"u","color":"#b400e0"},{"text":"i","color":"#c500db"},{"text":"t","color":"#c900d9"},{"text":"y","color":"#bd00dd"},{"text":" ","color":"#b100e1"},{"text":"E","color":"#a500e4"},{"text":"t","color":"#9900e8"},{"text":"e","color":"#8c00ec"},{"text":"r","color":"#8000f0"},{"text":"n","color":"#7400f3"},{"text":"a","color":"#6800f7"},{"text":"l","color":"#5c00fb"},{"text":"\\"","color":"#6600FF","bold":false}]','{"text":" "}','[{"text":"From the ","color":"#7600EE","italic":false},{"text":"Raiden Shogun","color":"#C800D6","bold":true}]','{"text":"herself, it expresses her","color":"#7600EE","italic":false}','{"text":"long held ideals.","color":"#7600EE","italic":false}']},HideFlags:4,Unbreakable:1,raiden:1,CustomModelData:1}
execute if score !frame counter matches 47 run clear @s carved_pumpkin{temp:1}
execute if score !frame counter matches 47..57 anchored eyes positioned ^ ^ ^0.4 rotated ~180 ~ run function genshin:raiden/burst_fade

# Strike Sound management
execute if score !frame counter matches 70 run stopsound @a * entity.lightning_bolt.impact
execute if score !frame counter matches 70 run stopsound @a * entity.lightning_bolt.thunder
execute if score !frame counter matches 80 run stopsound @a * entity.lightning_bolt.impact
execute if score !frame counter matches 80 run stopsound @a * entity.lightning_bolt.thunder
execute if score !frame counter matches 85 run stopsound @a * entity.lightning_bolt.impact
execute if score !frame counter matches 85 run stopsound @a * entity.lightning_bolt.thunder
execute if score !frame counter matches 90 run stopsound @a * entity.lightning_bolt.impact
execute if score !frame counter matches 90 run stopsound @a * entity.lightning_bolt.thunder

# Wide initial strikes
execute if score !frame counter matches 50 as @e[tag=rand,sort=arbitrary,limit=4] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","burstRand"]}
execute if score !frame counter matches 50..60 run spreadplayers ~ ~ 0 32 false @e[tag=burstRand]
execute if score !frame counter matches 50..60 as @e[tag=burstRand] at @s run summon lightning_bolt ~ ~ ~ {Tags:["transient"]}
execute if score !frame counter matches 60 run kill @e[tag=burstRand]

# Incomming strikes
execute if score !frame counter matches 70 positioned ~ ~-4 ~ run function genshin:raiden/lightning/r20
execute if score !frame counter matches 80 positioned ~ ~-4 ~ run function genshin:raiden/lightning/r16
execute if score !frame counter matches 85 positioned ~ ~-4 ~ run function genshin:raiden/lightning/r12
execute if score !frame counter matches 88 positioned ~ ~-4 ~ run function genshin:raiden/lightning/r8
execute if score !frame counter matches 90 positioned ~ ~-4 ~ run function genshin:raiden/lightning/r5

# Tight fill strikes
execute if score !frame counter matches 95 as @e[tag=rand,sort=arbitrary,limit=2] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","burstRand"]}
execute if score !frame counter matches 95..150 run spreadplayers ~ ~ 0 16 false @e[tag=burstRand]
execute if score !frame counter matches 95..150 as @e[tag=burstRand] at @s run summon lightning_bolt ~ ~ ~ {Tags:["transient"]}
execute if score !frame counter matches 150 run kill @e[tag=burstRand]

# Auto targeted strikes
# Avoid attacking these: tag=!transient,tag=!system,tag=!friendly
execute if score !frame counter matches 100..160 as @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..32,sort=random,limit=2] at @s run summon lightning_bolt ~ ~ ~ {Tags:["transient"]}
execute if score !frame counter matches 100..160 run kill @e[type=!player,type=!armor_stand,tag=!transient,tag=!system,tag=!friendly,distance=..32,sort=random,limit=4]

# Emergency termination
execute if score !frame counter matches ..-1 run tag @a remove raiden_burst

# Ending
execute if score !frame counter matches 180 at @e[tag=light] run fill ~ ~ ~ ~ ~ ~ air replace light
execute if score !frame counter matches 180 run kill @e[tag=light]
execute if score !frame counter matches 180 run effect clear @s
execute if score !frame counter matches 180 run effect give @s resistance 10 4 true
execute if score !frame counter matches 180.. unless entity @s[nbt={Inventory:[{Slot:-106,id:"witherstormmod:command_block_sword",tag:{raiden:1}}]}] run tag @a remove raiden_burst
scoreboard players add !frame counter 1

# summon wither_skeleton ~ ~ ~ {PersistenceRequired:1b,Health:100f,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s}]}},{}],ArmorItems:[{id:"aether:obsidian_boots",Count:1b},{id:"aether:obsidian_leggings",Count:1b},{id:"aether:obsidian_chestplate",Count:1b},{id:"minecraft:carved_pumpkin",Count:1b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:100},{Name:generic.movement_speed,Base:1}]}