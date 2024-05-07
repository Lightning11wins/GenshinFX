##
 # tick.mcfunction
 # Called every tick during Furina's burst.
 #
 # Created by Lightning_11.
##

# Push values onto the scoreboard
scoreboard players set !negate hpOld -1
scoreboard players set !multiplier hpOld 2

# Calculate the difference in player hp the last tick
execute as @a run scoreboard players operation @s hpOld -= @s hp

# Negate the change if it was negative
execute as @a[scores={hpOld=..0}] run scoreboard players operation @s hpOld *= !negate hpOld

# Add five times the total change in hp as fanfare stacks for the current player
execute as @a[scores={hpOld=0..}] run scoreboard players operation @s hpOld *= !multiplier hpOld
scoreboard players operation @s fanfare += @a[scores={hpOld=0..}] hpOld

# Update hpOld for the next tick
scoreboard players operation @a hpOld = @a hp

# Apply fanfare effects to others
execute if entity @s[scores={fanfare=100..199}] run effect give @a strength 1 0 true
execute if entity @s[scores={fanfare=200..299}] run effect give @a strength 1 1 true
execute if entity @s[scores={fanfare=300..399}] run effect give @a strength 1 2 true
execute if entity @s[scores={fanfare=400..}] run effect give @a strength 1 3 true
execute if entity @s[scores={fanfare=100..199}] unless data entity @s ActiveEffects[{"forge:id":"minecraft:regeneration",Amplifier:0b}] run effect give @a regeneration 4 0 true
execute if entity @s[scores={fanfare=200..299}] unless data entity @s ActiveEffects[{"forge:id":"minecraft:regeneration",Amplifier:1b}] run effect give @a regeneration 3 1 true
execute if entity @s[scores={fanfare=300..399}] unless data entity @s ActiveEffects[{"forge:id":"minecraft:regeneration",Amplifier:2b}] run effect give @a regeneration 2 2 true
execute if entity @s[scores={fanfare=400..}] unless data entity @s ActiveEffects[{"forge:id":"minecraft:regeneration",Amplifier:3b}] run effect give @a regeneration 1 3 true

# Apply health boost for fanfare above 400
# TODO: Fix this
execute if entity @s[scores={fanfare=400..499}] run effect give @s health_boost 1 0 true
execute if entity @s[scores={fanfare=500..599}] run effect give @s health_boost 1 1 true
execute if entity @s[scores={fanfare=600..699}] run effect give @s health_boost 1 2 true
execute if entity @s[scores={fanfare=700..799}] run effect give @s health_boost 1 3 true
execute if entity @s[scores={fanfare=800..}] run effect give @s health_boost 1 4 true

# Display fanfare stacks
execute if entity @s[scores={fanfare=..799}] run title @a actionbar [{"text":"Fanfare: ","color":"blue"},{"score":{"name":"@s","objective":"fanfare"},"bold":true,"color":"blue"},{"text":"/400","color":"blue"}]
execute if entity @s[scores={fanfare=800..}] run title @a actionbar [{"text":"Fanfare: 800/400","color":"blue"}]

# Display particles
particle minecraft:rain ~ ~0.5 ~ 0.8 0.2 0.8 0 8
execute if entity @s[scores={fanfare=100..199}] as @a at @s run particle minecraft:rain ~ ~0.5 ~ 0.5 0.2 0.5 0 1
execute if entity @s[scores={fanfare=200..299}] as @a at @s run particle minecraft:rain ~ ~0.5 ~ 0.6 0.2 0.6 0 2
execute if entity @s[scores={fanfare=300..399}] as @a at @s run particle minecraft:rain ~ ~0.5 ~ 0.7 0.2 0.7 0 4
execute if entity @s[scores={fanfare=400..}] as @a at @s run particle minecraft:rain ~ ~0.5 ~ 0.8 0.2 0.8 0 8

# Play sound
execute if score !furina counter matches 0 run playsound minecraft:weather.rain.above ambient @a ~ ~ ~ 0.3