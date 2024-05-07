##
 # antigrief.mcfunction
 # Experemental grief detection and prevention system.
 #
 # Created by Lightning_11.
##

# Detect threats
execute as @e[type=tnt,tag=!found] at @s run tellraw @a[tag=antigrief] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Found ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" by ","color":"white"},{"selector":"@p","color":"yellow"},{"text":": ","color":"white"},{"text":"[TP]","color":"green","clickEvent":{"action":"run_command","value":"/trigger antigrief set 1"},"hoverEvent":{"action":"show_text","contents":"Teleport to a player near the danger."}},{"text":" ","color":"white"},{"text":"[Freeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 2"},"hoverEvent":{"action":"show_text","contents":"Prevent all loaded lit TNT from exploding."}},{"text":" "},{"text":"[Unfreeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 3"},"hoverEvent":{"action":"show_text","contents":"Allow lit TNT to explode again."}},{"text":" ","color":"white"},{"text":"[Delete All]","color":"red","clickEvent":{"action":"run_command","value":"/trigger antigrief set 4"},"hoverEvent":{"action":"show_text","contents":"Remove all loaded lit TNT and TNT Minecarts."}}]
execute as @e[type=tnt_minecart,tag=!found] at @s run tellraw @a[tag=antigrief] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Found ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" by ","color":"white"},{"selector":"@p","color":"yellow"},{"text":": ","color":"white"},{"text":"[TP]","color":"green","clickEvent":{"action":"run_command","value":"/trigger antigrief set 1"},"hoverEvent":{"action":"show_text","contents":"Teleport to a player near the danger."}},{"text":" ","color":"white"},{"text":"[Freeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 2"},"hoverEvent":{"action":"show_text","contents":"Prevent all loaded lit TNT from exploding."}},{"text":" "},{"text":"[Unfreeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 3"},"hoverEvent":{"action":"show_text","contents":"Allow lit TNT to explode again."}},{"text":" ","color":"white"},{"text":"[Delete All]","color":"red","clickEvent":{"action":"run_command","value":"/trigger antigrief set 4"},"hoverEvent":{"action":"show_text","contents":"Remove all loaded lit TNT and TNT Minecarts."}}]
execute as @e[type=witherstormmod:super_tnt,tag=!found] at @s run tellraw @a[tag=antigrief] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Found ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" by ","color":"white"},{"selector":"@p","color":"yellow"},{"text":": ","color":"white"},{"text":"[TP]","color":"green","clickEvent":{"action":"run_command","value":"/trigger antigrief set 1"},"hoverEvent":{"action":"show_text","contents":"Teleport to a player near the danger."}},{"text":" ","color":"white"},{"text":"[Freeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 2"},"hoverEvent":{"action":"show_text","contents":"Prevent all loaded lit TNT from exploding."}},{"text":" "},{"text":"[Unfreeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 3"},"hoverEvent":{"action":"show_text","contents":"Allow lit TNT to explode again."}},{"text":" ","color":"white"},{"text":"[Delete All]","color":"red","clickEvent":{"action":"run_command","value":"/trigger antigrief set 4"},"hoverEvent":{"action":"show_text","contents":"Remove all loaded lit TNT and TNT Minecarts."}}]
execute as @e[type=witherstormmod:formidibomb,tag=!found] at @s run tellraw @a[tag=antigrief] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Found ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" by ","color":"white"},{"selector":"@p","color":"yellow"},{"text":": ","color":"white"},{"text":"[TP]","color":"green","clickEvent":{"action":"run_command","value":"/trigger antigrief set 1"},"hoverEvent":{"action":"show_text","contents":"Teleport to a player near the danger."}},{"text":" ","color":"white"},{"text":"[Freeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 2"},"hoverEvent":{"action":"show_text","contents":"Prevent all loaded lit TNT from exploding."}},{"text":" "},{"text":"[Unfreeze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger antigrief set 3"},"hoverEvent":{"action":"show_text","contents":"Allow lit TNT to explode again."}},{"text":" ","color":"white"},{"text":"[Delete All]","color":"red","clickEvent":{"action":"run_command","value":"/trigger antigrief set 4"},"hoverEvent":{"action":"show_text","contents":"Remove all loaded lit TNT and TNT Minecarts."}}]

# Stats
execute as @e[type=tnt,tag=!found] run scoreboard players add !antigriefThreatsFound stats 1
execute as @e[type=tnt_minecart,tag=!found] run scoreboard players add !antigriefThreatsFound stats 1
execute as @e[type=witherstormmod:super_tnt,tag=!found] run scoreboard players add !antigriefThreatsFound stats 1
execute as @e[type=witherstormmod:formidibomb,tag=!found] run scoreboard players add !antigriefThreatsFound stats 1

# Mark as found.
tag @e[type=tnt] add found
tag @e[type=tnt_minecart] add found
tag @e[type=witherstormmod:super_tnt] add found
tag @e[type=witherstormmod:formidibomb] add found

# Handle threat tp
execute as @a[tag=antigrief,scores={antigrief=1}] at @e[type=tnt,limit=1] at @p run tp @s ~ ~ ~
execute as @a[tag=antigrief,scores={antigrief=1}] at @s run tellraw @s [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Teleported to ","color":"green"},{"selector":"@p","color":"yellow"}]

# Handle threat freeze
execute if entity @a[tag=antigrief,scores={antigrief=2}] run scoreboard players set !frozen antigrief 1
execute if score !frozen antigrief matches 1 as @e[type=tnt] run data modify entity @s Fuse set value 51
tellraw @a[tag=antigrief,scores={antigrief=2}] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Froze TNT: ","color":"aqua"},{"selector":"@e[type=tnt]","color":"yellow"}]

# Handle threat unfreeze
execute if entity @a[tag=antigrief,scores={antigrief=3}] run scoreboard players set !frozen antigrief 0
tellraw @a[tag=antigrief,scores={antigrief=3}] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Unfroze TNT: ","color":"aqua"},{"selector":"@e[type=tnt]","color":"yellow"}]

# Handle threat delete
tellraw @a[tag=antigrief,scores={antigrief=4}] [{"text":"[","color":"dark_red"},{"text":"AntiGrief","color":"red"},{"text":"]","color":"dark_red"},{"text":" Deleted all TNT (","color":"red"},{"selector":"@e[type=tnt]","color":"yellow"},{"text":"), TNT Minecarts (","color":"red"},{"selector":"@e[type=tnt_minecart]","color":"yellow"},{"text":"), Super TNT (","color":"red"},{"selector":"@e[type=witherstormmod:super_tnt]","color":"yellow"},{"text":"), and F-Bombs (","color":"red"},{"selector":"@e[type=witherstormmod:formidibomb]","color":"yellow"},{"text":")","color":"red"}]
execute if entity @a[tag=antigrief,scores={antigrief=4}] run kill @e[type=tnt]
execute if entity @a[tag=antigrief,scores={antigrief=4}] run kill @e[type=tnt_minecart]
execute if entity @a[tag=antigrief,scores={antigrief=4}] run kill @e[type=witherstormmod:super_tnt]
execute if entity @a[tag=antigrief,scores={antigrief=4}] run kill @e[type=witherstormmod:formidibomb]

# Reset scoreboard
scoreboard players enable @a[tag=antigrief] antigrief
scoreboard players set @a[tag=antigrief] antigrief 0
