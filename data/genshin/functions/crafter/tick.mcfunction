##
 # crafter/tick.mcfunction
 # Executes on loaded crafters.
 #
 # Created by Lighning_11.
##

execute if entity @s[tag=cooldown] if block ~ ~1 ~1 crafting_table run tag @s remove cooldown
execute if entity @s[tag=!cooldown] if block ~ ~1 ~1 piston_head at @s run function genshin:crafter/craft

data modify block ~ ~ ~ CustomName set value '{"text":"Advanced Crafter","color":"red","bold":true}'
data modify block ~ ~ ~ Items append value {Slot:0, id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:1, id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:2, id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:6, id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:7, id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:8, id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:9, id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:10,id:"gray_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:11,id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:15,id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items prepend value {Slot:16,id:"gray_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:17,id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:18,id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:19,id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:20,id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:24,id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:25,id:"purple_stained_glass_pane",Count:1,tag:{crafter:1}}
data modify block ~ ~ ~ Items append value {Slot:26,id:"red_stained_glass_pane",Count:1,tag:{crafter:1}}
clear @a red_stained_glass_pane{crafter:1}
clear @a purple_stained_glass_pane{crafter:1}
clear @a gray_stained_glass_pane{crafter:1}