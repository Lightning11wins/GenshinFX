##
 # tick.mcfunction
 # Calls the ticking functions for all domains
 # that are running on the server.
 # 
 # Created by Lightning_11.
##

# Sword Domain
execute if score !swordDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainSwordIron,sort=arbitrary,limit=1] at @s run function genshin:domain/sword/iron_tick
execute if score !swordDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainSwordDiamond,sort=arbitrary,limit=1] at @s run function genshin:domain/sword/diamond_tick
execute if score !swordDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainSwordNetherite,sort=arbitrary,limit=1] at @s run function genshin:domain/sword/netherite_tick

# Claymore Domain
execute if score !claymoreDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainClaymoreIron,sort=arbitrary,limit=1] at @s run function genshin:domain/claymore/iron_tick
execute if score !claymoreDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainClaymoreDiamond,sort=arbitrary,limit=1] at @s run function genshin:domain/claymore/diamond_tick
execute if score !claymoreDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainClaymoreNetherite,sort=arbitrary,limit=1] at @s run function genshin:domain/claymore/netherite_tick

# Bow Domain
# execute if score !bowDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainBowIron,sort=arbitrary,limit=1] at @s run function genshin:domain/bow/iron_tick
# execute if score !bowDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainBowDiamond,sort=arbitrary,limit=1] at @s run function genshin:domain/bow/diamond_tick
# execute if score !bowDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainBowNetherite,sort=arbitrary,limit=1] at @s run function genshin:domain/bow/netherite_tick

# Polearm omain
# execute if score !polearmDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainPolearmIron,sort=arbitrary,limit=1] at @s run function genshin:domain/polearm/iron_tick
# execute if score !polearmDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainPolearmDiamond,sort=arbitrary,limit=1] at @s run function genshin:domain/polearm/diamond_tick
# execute if score !polearmDomain counter matches 10.. in genshin:abyss as @e[tag=center,tag=domainPolearmNetherite,sort=arbitrary,limit=1] at @s run function genshin:domain/polearm/netherite_tick

execute as @e[tag=domainReward,sort=arbitrary] at @s run function genshin:domain/rewards
# in genshin:abyss positioned 0 0 0 if entity @a[distance=0..,sort=arbitrary,limit=1] 