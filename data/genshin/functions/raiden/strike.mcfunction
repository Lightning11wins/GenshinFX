##
 # strike.mcfunction
 # Ace sword strike effects
 #
 # Created by Lightning_11.
##

execute if entity @s[tag=raiden0] positioned 0 0 0 run tag @e[tag=rand,sort=nearest,limit=8] add active
execute if entity @s[tag=raiden0] as @e[tag=active,sort=random,limit=1] if entity @s[tag=0] run schedule function genshin:raiden/strike0 15t
execute if entity @s[tag=raiden1] positioned 0 0 0 run tag @e[tag=rand,sort=nearest,limit=4] add active
execute if entity @s[tag=raiden1] as @e[tag=active,sort=random,limit=1] if entity @s[tag=0] run schedule function genshin:raiden/strike1 10t
execute if entity @s[tag=raiden2] positioned 0 0 0 run tag @e[tag=rand,sort=nearest,limit=2] add active
execute if entity @s[tag=raiden2] as @e[tag=active,sort=random,limit=1] if entity @s[tag=0] run schedule function genshin:raiden/strike2 5t
execute if entity @s[tag=raiden3] positioned 0 0 0 run tag @e[tag=rand,sort=nearest,limit=3] add active
execute if entity @s[tag=raiden3] as @e[tag=active,sort=random,limit=1] if entity @s[tag=0] run schedule function genshin:raiden/strike3 5t
execute if entity @s[tag=raiden3] as @e[tag=active,sort=random,limit=1] if entity @s[tag=0] run schedule function genshin:raiden/strike3 5t
execute if entity @s[tag=raiden4] run schedule function genshin:raiden/strike4 5t
tag @e[tag=rand] remove active

# Stats
scoreboard players add !aceStrikes stats 1