##
 # wanderer.mcfunction
 # Called on players wearing the wanderer hat to handle
 # changing its texture to match the player's state. The
 # hat changes when the player is standing on the ground,
 # hovering, or flying.
 #
 # Created by Lightning_11.
##

# Calculate current state.
execute if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air run tag @s add flying
execute if entity @s[tag=!flying] run tag @s add wandererGrounded
execute if entity @s[tag=flying] positioned ~ 0 ~ if entity @e[type=armor_stand,tag=wanderer,distance=..0.02] run tag @s add wandererHover
execute if entity @s[tag=flying] positioned ~ 0 ~ unless entity @e[type=armor_stand,tag=wanderer,distance=..0.1] run tag @s add wandererFly
kill @e[type=armor_stand,tag=wanderer]

# Play state transition sound effects.
execute if entity @s[tag=wandererGrounded,tag=wandererHover] run playsound genshin:wanderer voice @a[distance=..32] ~ ~ ~ 0.8 1 0.5
execute if entity @s[tag=wandererGrounded,tag=wandererFly] run playsound genshin:wanderer voice @a[distance=..32] ~ ~ ~ 0.9 1 0.5
execute if entity @s[tag=flying] run tag @s remove wandererGrounded

# Set new state.
execute if entity @s[tag=wandererGrounded] run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":"Wanderer\'s Great Kasa Hat","color":"#0055FF","bold":true,"italic":false}',Lore:['{"text":"The mere thought that a feeble","color":"#5D00FF","italic":false}','{"text":"human like you, a mere mortal,","color":"#5D00FF","italic":false}','{"text":"would dare to lay a finger on","color":"#5D00FF","italic":false}','{"text":"this most illustrious garment of","color":"#5D00FF","italic":false}','[{"text":"mine...  ","color":"#5D00FF","italic":false},{"text":"How Amusing!!","color":"#C219FF","bold":true}]','{"text":" "}','[{"text":"Properties","color":"#0055FF","bold":true,"italic":false},{"text":":","bold":false}]','[{"text":"Owner: ","color":"#8855FF","italic":false},{"text":"Lightning_11","color":"#2255FF","bold":true}]','[{"text":"State: ","color":"#8855FF","italic":false},{"text":"Idle","color":"#2255FF","bold":true}]','{"text":"LOCKED","color":"red","bold":true,"italic":false}']},CustomModelData:1,wanderer:1}
execute if entity @s[tag=wandererHover] run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":"Wanderer\'s Great Kasa Hat","color":"#0055FF","bold":true,"italic":false}',Lore:['{"text":"The mere thought that a feeble","color":"#5D00FF","italic":false}','{"text":"human like you, a mere mortal,","color":"#5D00FF","italic":false}','{"text":"would dare to lay a finger on","color":"#5D00FF","italic":false}','{"text":"this most illustrious garment of","color":"#5D00FF","italic":false}','[{"text":"mine...  ","color":"#5D00FF","italic":false},{"text":"How Amusing!!","color":"#C219FF","bold":true}]','{"text":" "}','[{"text":"Properties","color":"#0055FF","bold":true,"italic":false},{"text":":","bold":false}]','[{"text":"Owner: ","color":"#8855FF","italic":false},{"text":"Lightning_11","color":"#2255FF","bold":true}]','[{"text":"State: ","color":"#8855FF","italic":false},{"text":"Hovering","color":"#0080FF","bold":true}]','{"text":"LOCKED","color":"red","bold":true,"italic":false}']},CustomModelData:2,wanderer:1}
execute if entity @s[tag=wandererFly] run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":"Wanderer\'s Great Kasa Hat","color":"#0055FF","bold":true,"italic":false}',Lore:['{"text":"The mere thought that a feeble","color":"#5D00FF","italic":false}','{"text":"human like you, a mere mortal,","color":"#5D00FF","italic":false}','{"text":"would dare to lay a finger on","color":"#5D00FF","italic":false}','{"text":"this most illustrious garment of","color":"#5D00FF","italic":false}','[{"text":"mine...  ","color":"#5D00FF","italic":false},{"text":"How Amusing!!","color":"#C219FF","bold":true}]','{"text":" "}','[{"text":"Properties","color":"#0055FF","bold":true,"italic":false},{"text":":","bold":false}]','[{"text":"Owner: ","color":"#8855FF","italic":false},{"text":"Lightning_11","color":"#2255FF","bold":true}]','[{"text":"State: ","color":"#8855FF","italic":false},{"text":"Flying","color":"#EE00FF","bold":true}]','{"text":"LOCKED","color":"red","bold":true,"italic":false}']},CustomModelData:3,wanderer:1}

# Summon an armor stand marker.
execute if entity @s[tag=flying] run summon armor_stand ~ 0 ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","system","wanderer"]}

# Clean up execution data.
tag @s remove wandererHover
tag @s remove wandererFly
tag @s remove flying

# Hat Protection
effect give @s resistance 1 1 true
