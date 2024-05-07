##
 # gate/start.mcfunction
 # Creates a gate.
 #
 # Created by Lightning_11.
##

kill @e[tag=gate,tag=system,sort=arbitrary]
execute at @s rotated ~ 0 positioned ^ ^ ^10 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["system","gate"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:50}}]}
execute at @s rotated ~ 0 positioned ^ ^ ^3 run tp @e[tag=gate,tag=system,limit=1] ~ ~ ~ ~ ~
execute positioned ~ ~2 ~ run particle portal ^ ^ ^5 1.5 1 1.5 0.5 100
playsound block.portal.ambient ambient @s
effect give @s slowness 10 20 true
effect give @s nausea 10 2 true
effect give @s darkness 10 2 true
schedule function genshin:raiden/gate/activate 5s

# Gate Book:
# give @p written_book{display:{Name:'{"text":" "}',Lore:['{"text":"Gateway Book","bold":true,"italic":false}']},CustomModelData:1,title:"Gateway Book",author:"Lightning_11",pages:['{"text":"\\n\\n          .--.\\n      .--\'    \'--.\\n     /   .--.    \\\\\\n    /   /    \\\\   \\\\\\n    |    |     |    |\\n    \\\\   \\\\    /   /\\n     \\\\   \'--\'    /\\n       \'--.__.--\'","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Teleport to The Plane of Euthymia","color":"light_purple"}]},"clickEvent":{"action":"run_command","value":"/function genshin:raiden/gate/start"}}']} 1