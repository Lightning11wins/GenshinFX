##
 # resummon.mcfunction
 # Resummon all entity effects. Call this every time an entity effect changes.
 #
 # Created by Lightning_11
##

# Handle chunk loading
forceload add 0 0

# Cleanup
kill @e[type=armor_stand,tag=transient]

# Zhongli
execute at @a[tag=zhongli,scores={shield=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","system","zhongli"],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:black_stained_glass",Count:1,tag:{CustomModelData:1}},{}]}

# Paimon
execute at @a[tag=paimon] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","system","paimon"],ArmorItems:[{},{},{},{id:"carved_pumpkin",Count:1,tag:{CustomModelData:4}}]}

# Aranara
execute at @a[tag=aranara] run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,Tags:["transient","system","aranara"],ArmorItems:[{},{},{},{id:"carved_pumpkin",Count:1,tag:{CustomModelData:6}}]}

# Set up randomizer
summon armor_stand 0 0.00 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","0"]}
summon armor_stand 0 0.01 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","1"]}
summon armor_stand 0 0.02 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","2"]}
summon armor_stand 0 0.03 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","3"]}
summon armor_stand 0 0.04 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","4"]}
summon armor_stand 0 0.05 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","5"]}
summon armor_stand 0 0.06 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","6"]}
summon armor_stand 0 0.07 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","7"]}
summon armor_stand 0 0.08 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","8"]}
summon armor_stand 0 0.09 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","9"]}
summon armor_stand 0 0.10 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","10"]}
summon armor_stand 0 0.11 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","11"]}
summon armor_stand 0 0.12 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","12"]}
summon armor_stand 0 0.13 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","13"]}
summon armor_stand 0 0.14 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","14"]}
summon armor_stand 0 0.15 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","15"]}
summon armor_stand 0 0.16 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","16"]}
summon armor_stand 0 0.17 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","17"]}
summon armor_stand 0 0.18 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","18"]}
summon armor_stand 0 0.19 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","19"]}
summon armor_stand 0 0.20 0 {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,PersistenceRequired:1,NoBasePlate:1,Tags:["transient","system","rand","20"]}

# Stats
execute if entity @s[scores={counter=22}] run scoreboard players add !resummons stats 1