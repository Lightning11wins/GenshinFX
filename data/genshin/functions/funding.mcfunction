##
 # funding.mcfunction
 # Handles funding contributions to the comunity center.
 #
 # Created by Lightning_11.
##

# Exchange Rate:    Funding
# 256 Dirt / Stone     1
# 64 Logs              1
# 1 Iron Ingot         1
# 1 Gold Ingot         2
# 1 Diamond           24

# Funding Catagories:
# Claymore Iron Block (x256)
# Claymore Gold Block (x128)
# Claymore Diamond (x128)

# Claymore domain funding
# Iron Block x8
execute if entity @s[scores={fund=10}] if score !claymoreIronBlock funding matches ..248 store result score !fundTest funding run clear @s iron_block 0
execute if entity @s[scores={fund=10}] if score !claymoreIronBlock funding matches ..248 if score !fundTest funding matches 8.. run clear @s iron_block 8
execute if entity @s[scores={fund=10}] if score !claymoreIronBlock funding matches ..248 if score !fundTest funding matches 8.. run scoreboard players add @s fundingLeaderboard 72
execute if entity @s[scores={fund=10}] if score !claymoreIronBlock funding matches ..248 if score !fundTest funding matches 8.. run scoreboard players add !claymoreIronBlock funding 8
# Iron Block x64
execute if entity @s[scores={fund=11}] if score !claymoreIronBlock funding matches ..192 store result score !fundTest funding run clear @s iron_block 0
execute if entity @s[scores={fund=11}] if score !claymoreIronBlock funding matches ..192 if score !fundTest funding matches 64.. run clear @s iron_block 64
execute if entity @s[scores={fund=11}] if score !claymoreIronBlock funding matches ..192 if score !fundTest funding matches 64.. run scoreboard players add @s fundingLeaderboard 576
execute if entity @s[scores={fund=11}] if score !claymoreIronBlock funding matches ..192 if score !fundTest funding matches 64.. run scoreboard players add !claymoreIronBlock funding 64
# Gold Block x8
execute if entity @s[scores={fund=12}] if score !claymoreGoldBlock funding matches ..120 store result score !fundTest funding run clear @s gold_block 0
execute if entity @s[scores={fund=12}] if score !claymoreGoldBlock funding matches ..120 if score !fundTest funding matches 8.. run clear @s gold_block 8
execute if entity @s[scores={fund=12}] if score !claymoreGoldBlock funding matches ..120 if score !fundTest funding matches 8.. run scoreboard players add @s fundingLeaderboard 144
execute if entity @s[scores={fund=12}] if score !claymoreGoldBlock funding matches ..120 if score !fundTest funding matches 8.. run scoreboard players add !claymoreGoldBlock funding 8
# Gold Block x64
execute if entity @s[scores={fund=13}] if score !claymoreGoldBlock funding matches ..64 store result score !fundTest funding run clear @s gold_block 0
execute if entity @s[scores={fund=13}] if score !claymoreGoldBlock funding matches ..64 if score !fundTest funding matches 64.. run clear @s gold_block 64
execute if entity @s[scores={fund=13}] if score !claymoreGoldBlock funding matches ..64 if score !fundTest funding matches 64.. run scoreboard players add @s fundingLeaderboard 1152
execute if entity @s[scores={fund=13}] if score !claymoreGoldBlock funding matches ..64 if score !fundTest funding matches 64.. run scoreboard players add !claymoreGoldBlock funding 64
# Diamond x4
execute if entity @s[scores={fund=14}] if score !claymoreDiamond funding matches ..124 store result score !fundTest funding run clear @s diamond 0
execute if entity @s[scores={fund=14}] if score !claymoreDiamond funding matches ..124 if score !fundTest funding matches 4.. run clear @s diamond 4
execute if entity @s[scores={fund=14}] if score !claymoreDiamond funding matches ..124 if score !fundTest funding matches 4.. run scoreboard players add @s fundingLeaderboard 96
execute if entity @s[scores={fund=14}] if score !claymoreDiamond funding matches ..124 if score !fundTest funding matches 4.. run scoreboard players add !claymoreDiamond funding 4
# Diamond x32
execute if entity @s[scores={fund=15}] if score !claymoreDiamond funding matches ..96 store result score !fundTest funding run clear @s diamond 0
execute if entity @s[scores={fund=15}] if score !claymoreDiamond funding matches ..96 if score !fundTest funding matches 32.. run clear @s diamond 32
execute if entity @s[scores={fund=15}] if score !claymoreDiamond funding matches ..96 if score !fundTest funding matches 32.. run scoreboard players add @s fundingLeaderboard 768
execute if entity @s[scores={fund=15}] if score !claymoreDiamond funding matches ..96 if score !fundTest funding matches 32.. run scoreboard players add !claymoreDiamond funding 32

# Update the book.
execute if entity @s[scores={fund=10..}] run setblock -1230 75 2524 air
execute if entity @s[scores={fund=10..}] run setblock -1241 69 2521 redstone_block
# Claymore Domain Funding Book
# execute if entity @s[scores={fund=10..}] run setblock -1230 75 2524 lectern[facing=south,has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{fundingBook:1,title:"Claymore Domain",author:"Lightning_11",generation:3,resolved:0b,pages:['[{"text":"","bold":false},{"text":"\\nClaymore Domain Funds (1/2): ","color":"blue","bold":true},{"text":"\\n\\nIron Blocks: ","bold":true},{"score":{"name":"!claymoreIronBlock","objective":"funding"}},{"text":"/256\\n"},{"text":"Fund: "},{"text":"[x8]","clickEvent":{"action":"run_command","value":"/trigger fund set 10"}},{"text":" "},{"text":"[x64]","clickEvent":{"action":"run_command","value":"/trigger fund set 11"}},{"text":"\\n\\nGold Blocks: ","bold":true},{"score":{"name":"!claymoreGoldBlock","objective":"funding"}},{"text":"/128\\n"},{"text":"Fund: "},{"text":"[x8]","clickEvent":{"action":"run_command","value":"/trigger fund set 12"}},{"text":" "},{"text":"[x64]","clickEvent":{"action":"run_command","value":"/trigger fund set 13"}}]','[{"text":"","bold":false},{"text":"\\nClaymore Domain Funds (2/2): ","color":"blue","bold":true},{"text":"\\n\\nDiamonds: ","bold":true},{"score":{"name":"!claymoreDiamond","objective":"funding"}},{"text":"/128\\n"},{"text":"Fund: "},{"text":"[x4]","clickEvent":{"action":"run_command","value":"/trigger fund set 14"}},{"text":" "},{"text":"[x32]","clickEvent":{"action":"run_command","value":"/trigger fund set 15"}}]']}}} replace

# Reset the scoreboard for this players.
scoreboard players set @s fund 0
