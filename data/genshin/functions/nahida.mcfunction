##
 # nahida.mcfunction
 # Handle Nahida's elemental skill
 #
 # Created by Lightning_11.
##

# Counter meanings:
# 3 or more: The skill is starting and Nahida is floating into the air.
# 2: Nahida is stationary in the air.
# 1: Nahida's skill is ending.
# 0: Nahida's skill is not active.

# Elemental skill start
item replace entity @s[scores={counter=22}] weapon.offhand with witherstormmod:command_block_sword{display:{Name:'{"text":"Seed of Selection","color":"green","bold":true,"italic":false}',Lore:['{"text":"Who can withstand the cutness","color":"green","italic":false}','{"text":"of Lesser Lord Kusanali?","color":"green","italic":false}']},Unbreakable:1,CustomModelData:7}
execute if entity @s[scores={counter=22}] run playsound genshin:nahida voice @a[distance=..32] ~ ~ ~ 1 1 0.2
execute if entity @s[scores={counter=22}] run scoreboard players add !burstNahida stats 1
effect give @s[scores={counter=22}] levitation 1 1 true
effect give @s[scores={counter=2}] levitation 1000000 255 true
scoreboard players remove @s[scores={counter=3..}] counter 1

# Target selection
execute if entity @s[scores={counter=2..10}] run team join nahidaTarget @e[distance=1..12,type=!player,tag=!transient,tag=!system,tag=!friendly,sort=random,limit=1]
effect give @e[team=nahidaTarget] glowing 1 1 true

# Elemental skill end
execute if entity @s[scores={counter=2..},nbt=!{Inventory:[{Slot:-106b,id:"witherstormmod:command_block_sword",tag:{CustomModelData:7}}]}] run scoreboard players set @s counter 1
effect clear @s[scores={counter=1}] levitation
execute if entity @s[scores={counter=1}] run effect give @e[team=nahidaTarget,distance=..20] poison 5 3
execute if entity @s[scores={counter=1}] run effect give @e[team=nahidaTarget,distance=..20] instant_damage 1 0 true
clear @s[scores={counter=1}] witherstormmod:command_block_sword{CustomModelData:7}
give @s[scores={counter=1}] witherstormmod:command_block_sword{display:{Name:'[{"text":"F","color":"#A7FF0F","italic":false},{"text":"r","color":"#9CFE18"},{"text":"a","color":"#92FD21"},{"text":"g","color":"#88FC2A"},{"text":"r","color":"#7DFB33"},{"text":"a","color":"#73FA3C"},{"text":"n","color":"#69FA46"},{"text":"t","color":"#5EF94F"},{"text":" ","color":"#54F858"},{"text":"F","color":"#4AF761"},{"text":"l","color":"#3FF66A"},{"text":"o","color":"#35F674"},{"text":"w","color":"#2BF57D"},{"text":"e","color":"#20F486"},{"text":"r","color":"#16F38F"},{"text":"s","color":"#0CF298"}]',Lore:["{\"text\":\"Grants the wisdom to refute\",\"color\":\"green\",\"italic\":false}","{\"text\":\"anyone who teases Ayaya's\",\"color\":\"green\",\"italic\":false}","{\"text\":\"massive tic-tac-toe forehead.\",\"color\":\"green\",\"italic\":false}"]},HideFlags:4,Unbreakable:1,CustomModelData:6}
execute if entity @s[scores={counter=1}] run team leave @e[team=nahidaTarget]
scoreboard players set @s[scores={counter=1}] counter 0