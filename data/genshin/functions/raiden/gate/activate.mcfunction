##
 # gate/activate.mcfunction
 # Activates a gate.
 #
 # Created by Lightning_11.
##

execute as @e[tag=gate,tag=system] at @s as @a[distance=..12] run tag @s add raiden_tp
kill @e[tag=gate,tag=system]
execute in the_end as @a[tag=raiden_tp] run tp @s 0 100 0 0 0
effect give @a[tag=raiden_tp] resistance 10 10 true
execute in the_end run playsound block.portal.travel ambient @a[distance=..32] 0 100 0 1 1 0.5
tag @a remove raiden_tp