##
 # stargate.mcfunction
 # Spawn a temp end portal.
 #
 # Created by Lightning_11.
##

setblock ~ ~ ~ end_portal
tag @a[distance=..32] add stargate
execute as @a[distance=..24] run playsound block.respawn_anchor.deplete player @s ~ ~ ~ 0.8 0.25 0.5
scoreboard players set !stargate counter 180
effect give @a[distance=..16] darkness 10 2 true
effect give @a[distance=..16] blindness 4 1 true
effect give @s slowness 10 100 true
particle smoke ~ ~0.4 ~ 0 0 0 0.2 40