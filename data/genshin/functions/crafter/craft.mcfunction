##
 # crafter/craft.mcfunction
 #
 # Created by Lightning_11.
##

# summon armor_stand 62 -40 -5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["system","crafter"]}

# Soulstone (soulstone)
# items.h = ['deeperdarker:heart_of_the_deep', 1];
# items.s = ['minecraft:heart_of_the_sea', 1];
# recipe = ['h h h',
#           'h s h',
#           'h h h'];
# result = `id:"stick",Count:1,tag:{display:{Name:'{"text":"Soulstone","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:103,crafter:1,soulstone:1}`;
execute if data block ~ ~ ~ Items[{Slot:3b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:4b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:12b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:heart_of_the_sea",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:21b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:22b,id:"deeperdarker:heart_of_the_deep",Count:1b}] if data block ~ ~ ~ Items[{Slot:23b,id:"deeperdarker:heart_of_the_deep",Count:1b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"stick",Count:1,tag:{display:{Name:'{"text":"Soulstone","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:103,crafter:1,soulstone:1}}
tag @s remove success

# Sculk stick (sculkStick)
# items.s = ['minecraft:sculk', 1];
# recipe = ['_ _ _',
#           '_ s _',
#           '_ s _'];
# result = `id:"stick",Count:1,tag:{display:{Name:'{"text":"Sculk Stick","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,sculkStick:1}`;
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:12b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:sculk",Count:1b}] unless data block ~ ~ ~ Items[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:21b}] if data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:sculk",Count:1b}] unless data block ~ ~ ~ Items[{Slot:23b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"stick",Count:1,tag:{display:{Name:'{"text":"Sculk Stick","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,sculkStick:1}}
tag @s remove success

# Sculk Core (sculkCore)
# items.c = ['minecraft:sculk_catalyst', 1];
# items.s = ['minecraft:sculk_sensor', 1];
# items.e = ['minecraft:echo_shard', 1];
# recipe = ['c e c',
#           'e s e',
#           'c e c'];
# result = `id:"stick",Count:1,tag:{display:{Name:'{"text":"Sculk Core","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:100,crafter:1}`;
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:sculk_catalyst",Count:1b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:echo_shard",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:sculk_catalyst",Count:1b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:echo_shard",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:sculk_sensor",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:echo_shard",Count:1b}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:sculk_catalyst",Count:1b}] if data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:echo_shard",Count:1b}] if data block ~ ~ ~ Items[{Slot:23b,id:"minecraft:sculk_catalyst",Count:1b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"stick",Count:1,tag:{display:{Name:'{"text":"Sculk Core","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:100,crafter:1,sculkCore:1}}
tag @s remove success

# Guardian Scepter (guardianStaff)
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.C = ['minecraft:sculk_catalyst', 1];
# items.S = ['minecraft:sculk_shrieker', 1];
# recipe = ['_ c S',
#           '_ C c',
#           's _ _'];
# result = `id:"bow",Count:1,tag:{display:{Name:'{"text":"Guardian\'s Scepter","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,guardianStaff:1}`;
execute unless data block ~ ~ ~ Items[{Slot:3b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:sculk_shrieker",Count:1b}] unless data block ~ ~ ~ Items[{Slot:12b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:sculk_catalyst",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:stick",Count:1b,tag:{sculkStick:1}}] unless data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:23b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"bow",Count:1,tag:{display:{Name:'{"text":"Guardian Scepter","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,guardianStaff:1}}
tag @s remove success

# Guardian Sword (guardianSword)
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.w = ['deeperdarker:warden_sword', 1];
# recipe = ['_ c _',
#           '_ w _',
#           '_ s _'];
# result = `id:"deeperdarker:warden_sword",Count:1,tag:{display:{Name:'{"text":"Guardian Sword","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,sculkSword:1}`;
execute unless data block ~ ~ ~ Items[{Slot:3b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] unless data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:12b}] if data block ~ ~ ~ Items[{Slot:13b,id:"deeperdarker:warden_sword",Count:1b}] unless data block ~ ~ ~ Items[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:21b}] if data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:stick",Count:1b,tag:{sculkStick:1}}] unless data block ~ ~ ~ Items[{Slot:23b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"deeperdarker:warden_sword",Count:1,tag:{display:{Name:'{"text":"Guardian Sword","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,guardianSword:1}}
tag @s remove success

# Guardian Sword (guardianSword)
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.w = ['deeperdarker:warden_sword', 1];
# recipe = ['_ _ c',
#           '_ w _',
#           's _ _'];
# result = `id:"deeperdarker:warden_sword",Count:1,tag:{display:{Name:'{"text":"Guardian Sword","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,sculkSword:1}`;
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] unless data block ~ ~ ~ Items[{Slot:12b}] if data block ~ ~ ~ Items[{Slot:13b,id:"deeperdarker:warden_sword",Count:1b}] unless data block ~ ~ ~ Items[{Slot:14b}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:stick",Count:1b,tag:{sculkStick:1}}] unless data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:23b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"deeperdarker:warden_sword",Count:1,tag:{display:{Name:'{"text":"Guardian Sword","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,sculkSword:1}}
tag @s remove success

# Guardian Helmet (guardianHelmet)
# items.b = ['minecraft:sculk', 1];
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.S = ['minecraft:sculk_sensor', 1];
# items.w = ['deeperdarker:warden_helmet', 1];
# recipe = ['c S c',
#           'b w b',
#           '_ _ _'];
# result = `id:"deeperdarker:warden_helmet",Count:1,tag:{display:{Name:'{"text":"Guardian Helmet","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianHelmet:1}`;
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:sculk_sensor",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:sculk",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"deeperdarker:warden_helmet",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:sculk",Count:1b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:23b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"deeperdarker:warden_helmet",Count:1,tag:{display:{Name:'{"text":"Guardian Helmet","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianHelmet:1}}
tag @s remove success

# Guardian Cuirass (guardianChestplate)
# items.b = ['minecraft:sculk', 1];
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.S = ['minecraft:sculk_shrieker', 1];
# items.w = ['deeperdarker:warden_chestplate', 1];
# recipe = ['c w c',
#           'c S c',
#           'b b b'];
# result = `id:"deeperdarker:warden_chestplate",Count:1,tag:{display:{Name:'{"text":"Guardian Cuirass","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianChestplate:1}`;
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:4b,id:"deeperdarker:warden_chestplate",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:sculk_shrieker",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:sculk",Count:1b}] if data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:sculk",Count:1b}] if data block ~ ~ ~ Items[{Slot:23b,id:"minecraft:sculk",Count:1b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"deeperdarker:warden_chestplate",Count:1,tag:{display:{Name:'{"text":"Guardian Cuirass","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianChestplate:1}}
tag @s remove success

# Guardian Leggings (guardianLeggings)
# items.b = ['minecraft:sculk', 1];
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.C = ['minecraft:sculk_catalyst', 1];
# items.w = ['deeperdarker:warden_leggings', 1];
# recipe = ['C b C',
#           'c w c',
#           'c _ c'];
# result = `id:"deeperdarker:warden_leggings",Count:1,tag:{display:{Name:'{"text":"Guardian Leggings","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianLeggings:1}`;
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:sculk_catalyst",Count:1b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:sculk",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:sculk_catalyst",Count:1b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:13b,id:"deeperdarker:warden_leggings",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] unless data block ~ ~ ~ Items[{Slot:22b}] if data block ~ ~ ~ Items[{Slot:23b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"deeperdarker:warden_leggings",Count:1,tag:{display:{Name:'{"text":"Guardian Leggings","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianLeggings:1}}
tag @s remove success

# Guardian Boots (guardianBoots)
# items.b = ['minecraft:sculk', 1];
# items.s = ['minecraft:stick', 1, 'sculkStick'];
# items.c = ['minecraft:stick', 1, 'sculkCore'];
# items.w = ['deeperdarker:warden_boots', 1];
# recipe = ['_ _ _',
#           'c w c',
#           'b _ b'];
# result = `id:"deeperdarker:warden_boots",Count:1,tag:{display:{Name:'{"text":"Guardian Boots","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianBoots:1}`;
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:13b,id:"deeperdarker:warden_boots",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:stick",Count:1b,tag:{sculkCore:1}}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:sculk",Count:1b}] unless data block ~ ~ ~ Items[{Slot:22b}] if data block ~ ~ ~ Items[{Slot:23b,id:"minecraft:sculk",Count:1b}] run tag @s add success
execute if entity @s[tag=success] run tag @s add craft
execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,id:"deeperdarker:warden_boots",Count:1,tag:{display:{Name:'{"text":"Guardian Boots","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},crafter:1,guardianBoots:1}}
tag @s remove success

# Clear crafting grid if item was crafted.
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:3, id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:4, id:"air"}
execute if entity @s[tag=craft] run data modify block ~ ~ ~ Items append value {Slot:5, id:"air"}
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