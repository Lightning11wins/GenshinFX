##
 # jumpscare.mcfunction
 # Jumpscare the player with Raiden when they have an empty hand.
 #
 # Created by Lightning_11.
##

tag @s remove raiden_jumpscare
tag @s add scared
effect give @s mining_fatigue 2 100 true
item replace entity @s weapon.mainhand with carved_pumpkin{CustomModelData:150,temp:1}
playsound genshin:jumpscare master @s ~ ~ ~ 1 1 1
schedule function genshin:raiden/jumpscare_end 50t