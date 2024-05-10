##
 # crafter/craft.mcfunction
 #
 # Created by Lightning_11.
##

# summon armor_stand 62 -40 -5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["system","crafter"]}

# Soulstone
# items.h = ['deeperdarker:heart_of_the_deep', 1];
# items.s = ['minecraft:heart_of_the_sea', 1];
# recipe = ['h h h',
#           'h s h',
#           'h h h'];
# result = `id:"stick",Count:1,tag:{display:{Name:'{"text":"Soulstone","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:103,crafter:1}`;
execute if data block ~ ~ ~ Items[{Slot:3b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:4b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:12b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:heart_of_the_sea",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:21b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:22b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:23b,id:"deeperdarker:heart_of_the_deep",Count:1b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"stick",Count:1,tag:{display:{Name:'{"text":"Soulstone","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:103,crafter:1}}
tag @s remove success

# Sculk stick
# items.s = ['minecraft:sculk', 1];
# recipe = ['_ _ _',
#           '_ s _',
#           '_ s _'];
# result = `id:"stick",Count:1,tag:{display:{Name:'{"text":"Sculk Stick","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1}`;
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:12b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:sculk",Count:1b}] unless data block ~ ~ ~ Items[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:21b}] if data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:sculk",Count:1b}] unless data block ~ ~ ~ Items[{Slot:23b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"stick",Count:1,tag:{display:{Name:'{"text":"Sculk Stick","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1}}
tag @s remove success

# Clear crafting grid if item was crafted.
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:3,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:4,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:5,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:12,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:13,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:14,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:21,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:22,id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:23,id:"air"}

# Crafting effects
execute if entity @s[tag=craft] run playsound block.anvil.use ambient @a[distance=..16] ~ ~1 ~ 0.5 0.6 0

# Taging
tag @s remove craft
tag @s add cooldown