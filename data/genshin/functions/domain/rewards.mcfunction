##
 # rewards.mcfunction
 # Handle rewards containers.
 #
 # Created by Lightning_11.
##

# Untag looted reward containers.
execute if entity @s[tag=filled] at @s unless data block ~ ~ ~ Items[] run scoreboard players add !domainRewardsLooted stats 1
execute if entity @s[tag=filled] at @s unless data block ~ ~ ~ Items[] run tag @s remove filled

# Rewards for test domain.
# execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainTest:1}}] run tag @s add filled
# execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainTest:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/domain"}

# Rewards for keys.
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainKey:1}}] run scoreboard players add !domainKeysUsed stats 1
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainKey:1}}] run tag @s add filled

# Rewards for sword domains.
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainSwordIron:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/sword/iron"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainSwordDiamond:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/sword/diamond"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainSwordNetherite:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/sword/netherite"}

# Rewards for claymore domains.
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainClaymoreIron:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/claymore/iron"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainClaymoreDiamond:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/claymore/diamond"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainClaymoreNetherite:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/claymore/netherite"}

# Rewards for bow domains.
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainBowIron:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/bow/iron"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainBowDiamond:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/bow/diamond"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainBowNetherite:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/bow/netherite"}

# Rewards for polearm domains.
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainPolearmIron:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/polearm/iron"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainPolearmDiamond:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/polearm/diamond"}
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{domainPolearmNetherite:1}}] run data merge block ~ ~ ~ {LootTable:"genshin:domain/polearm/netherite"}

# Reset unused reward containers to their default state.
clear @a yellow_stained_glass_pane{domain:1}
execute if entity @s[tag=!filled] at @s run data merge block ~ ~ ~ {Items:[{Slot:0,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:1,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:2,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:3,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:4,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:5,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:6,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:7,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:8,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:9,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:10,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:11,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:12,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:14,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:15,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:16,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:17,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:18,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:19,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:20,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:21,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:22,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:23,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:24,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:25,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}},{Slot:26,id:"minecraft:yellow_stained_glass_pane",Count:1,tag:{domain:1}}]}
data merge block ~ ~ ~ {CustomName:'{"text":"Reward Box","color":"blue"}'}
