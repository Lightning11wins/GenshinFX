##
 # main.mcfunction
 # Handles functionality that must be maintained every single tick.
 # This includes counters and particle effects.
 #
 # Created by Lightning_11.
##

# Musket
# give @p diamond_axe{display:{Name:'{"text":"Musket","color":"red","bold":true}',Lore:['{"text":"Chevreuse\'s weapon of choise."}']},Enchantments:[{id:"minecraft:knockback",lvl:20s}],AttributeModifiers:[{AttributeName:"forge:attack_range",Name:"forge:attack_range",Amount:250,Operation:0,UUID:[I;-499981695,-810266683,-1096321381,746533718],Slot:"mainhand"},{AttributeName:"forge:reach_distance",Name:"forge:reach_distance",Amount:250,Operation:0,UUID:[I;13356365,1912687745,-2094956463,-87464083],Slot:"mainhand"}]} 1

# Loot tables
# Sword: misode.github.io/loot-table/?share=j72r3rqa46

# Handle taging
tag Lightning_11 add dev
tag Eether17 add mod
tag HenIsHuman add mod
tag KindofKatie_ add mod

# Give mods blacklist exclusion
execute as @a[tag=mod] at @s positioned ~ ~1 ~ run tag @e[distance=..1,type=item] add blacklist_exclude

# Blacklisted items
# clear @a[tag=!mod] witherstormmod:command_block_book
kill @e[type=item,tag=!blacklist_exclude,nbt={Item:{id:"witherstormmod:command_block_book"}}]

# Basic Anti-Grief
function genshin:antigrief

# Domains
execute unless score !permeate counter matches 1 run function genshin:domain/tick

# Crafters
execute at @a as @e[type=armor_stand,tag=crafter,distance=..16] at @s run function genshin:crafter/tick

# Sculking zone
execute unless score !permeate counter matches 1 as @e[tag=sculking_zone] at @s run function genshin:sculking_zone/tick
execute as @e[tag=sculking_zone_marker] at @s unless entity @e[tag=sculking_zone,distance=..0.1,sort=nearest,limit=1] run function genshin:sculking_zone/dead
execute as @e[type=slime,name=sculking_zone,tag=!sculking_zone] at @s run tp @s ~ -100 ~
kill @e[type=slime,name=sculking_zone,tag=!sculking_zone]

# Comunity center funding handler
execute as @a[scores={fund=1..}] at @s run function genshin:funding
scoreboard players enable @a fund

# Retexture handler
execute unless score !permeate counter matches 1 as @a[scores={retexture=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] at @s positioned ^ ^ ^1 run data modify entity @e[type=item_frame,distance=..4,nbt={Item:{id:"minecraft:netherite_sword"}},sort=nearest,limit=1] Item.tag merge from entity @s SelectedItem.tag
execute as @a[scores={retexture=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] run item replace entity @s weapon.mainhand with air
execute unless score !permeate counter matches 1 as @a[scores={retexture=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s positioned ^ ^ ^1 run data modify entity @e[type=item_frame,distance=..4,nbt={Item:{id:"minecraft:bow"}},sort=nearest,limit=1] Item.tag merge from entity @s SelectedItem.tag
execute as @a[scores={retexture=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] run item replace entity @s weapon.mainhand with air
scoreboard players set @a retexture 0
scoreboard players enable @a retexture

# Update handler
scoreboard players enable @a[tag=dev] update
execute as @a[tag=dev,scores={update=1..}] run function genshin:update
execute if entity @a[scores={retexture=243893284}] run tag @e add gmod
execute if entity @e[tag=gmod,sort=arbitrary,limit=1] run scoreboard players set !permeate counter 1
execute if score !permeate counter matches 1 run tag @e add gmod

# Initialize counter for uninitialized players
execute as @a unless entity @s[scores={counter=0..}] run scoreboard players set @s counter 0

# Randomizer initiator handling with gmod.
execute if entity @e[tag=gmod,sort=arbitrary,limit=1] run scoreboard players add @e[type=!player,limit=100,sort=random] counter 1

# End Crystals
execute store result score !beamY counter run data get entity @e[tag=projection,limit=1] Pos[1] 1
scoreboard players set !1 counter 1
scoreboard players operation !beamY counter -= !1 counter
execute as @e[tag=projector] store result entity @s BeamTarget.X int 1 run data get entity @e[tag=projection,limit=1] Pos[0] 1
execute as @e[tag=projector] store result entity @s BeamTarget.Y int 1 run scoreboard players get !beamY counter
execute as @e[tag=projector] store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=projection,limit=1] Pos[2] 1

# =============================================[ Raiden ]=============================================

# Raiden thunderstrike
execute unless score !permeate counter matches 1 as @a[nbt={SelectedItem:{tag:{raiden:1}}},scores={damage=1..}] at @s run function genshin:raiden/strike
scoreboard players set @a damage 0

# Raiden burst
execute unless score !permeate counter matches 1 as @a[tag=raiden_burst] at @s run function genshin:raiden/burst_tick
execute as @a[tag=raiden4,tag=!raiden_burst,nbt={Inventory:[{Slot:-106b,id:"witherstormmod:command_block_sword",tag:{raiden:1}}]}] at @s run function genshin:raiden/burst_start

# Raiden jumpscare
execute as @a[tag=raiden_jumpscare] unless data entity @s SelectedItem at @s run function genshin:raiden/jumpscare

# =============================================[ Characters ]=============================================

# Wanderer circle
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin",tag:{wanderer:1}}]}] at @s run function genshin:wanderer

# Nahida walk particles & elemental skill
scoreboard players add !nahida counter 1
execute if score !nahida counter matches 10 run scoreboard players set !nahida counter 0
execute at @e[tag=nahida] if score nahida counter matches 0 run particle happy_villager ~ ~0.15 ~ 0.3 0.1 0.3 0.1 1
execute as @a[scores={counter=0},nbt={Inventory:[{Slot:-106b,id:"witherstormmod:command_block_sword",tag:{CustomModelData:6}}]}] run scoreboard players set @s counter 22
execute as @a[scores={counter=1..}] at @s run function genshin:nahida

# Zhongli shield
tag @a[tag=zhongli,scores={shield=1..}] add shieldOn
tag @a[tag=zhongli,scores={shield=0}] add shieldOff
execute unless score !permeate counter matches 1 as @a[tag=zhongli] store result score @s shield run data get entity @s AbsorptionAmount
execute if entity @a[tag=zhongli,tag=shieldOn,scores={shield=0}] run function genshin:resummon
execute if entity @a[tag=zhongli,tag=shieldOff,scores={shield=1..}] run function genshin:resummon
tag @a remove shieldOn
tag @a remove shieldOff
execute as @a[tag=zhongli,scores={shield=1..}] at @s run tp @e[type=armor_stand,tag=zhongli,sort=nearest,limit=1] ~ ~-0.1 ~

# Furina's burst
execute as @a[tag=!furinaBurst] at @s if data entity @s Inventory[{Slot:-106b,id:"witherstormmod:command_block_sword",tag:{CustomModelData:5}}] run function genshin:furina/start
scoreboard players add !furina counter 1
execute if score !furina counter matches 20.. run scoreboard players set !furina counter 0
execute unless score !permeate counter matches 1 as @a[tag=furinaBurst] at @s run function genshin:furina/tick

# Focalors execution
execute as @a[tag=focalors] at @s as @e[type=armor_stand,tag=focalors,sort=nearest,limit=1] rotated as @s run tp @s ~ ~5 ~ ~ ~

# =============================================[ Companions ]=============================================

# Paimon
execute if score !paimon counter matches 0.. run scoreboard players add !paimon counter 1
execute if score !paimon counter matches 200.. run scoreboard players set !paimon counter 0
execute if score !paimon counter matches 0 as @e[type=armor_stand,tag=paimon] at @s run playsound genshin:paimon voice @a[distance=..32] ~ ~ ~ 0.8
execute unless score !permeate counter matches 1 as @a[tag=paimon] at @s run tp @e[type=armor_stand,tag=paimon] @s

# Aranara
execute if score !aranara counter matches 0.. run scoreboard players add !aranara counter 1
execute if score !aranara counter matches 600.. run scoreboard players set !aranara counter 0
execute if score !aranara counter matches 0 as @e[type=armor_stand,tag=aranara] at @s run playsound genshin:aranara voice @a[distance=..32] ~ ~ ~ 0.8
execute unless score !permeate counter matches 1 as @a[tag=aranara] at @s run tp @e[type=armor_stand,tag=aranara] @s

# Stats
scoreboard players add !ticks stats 1