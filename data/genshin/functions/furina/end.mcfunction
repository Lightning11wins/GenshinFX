##
 # end.mcfunction
 # Called at the end of Furina's burst.
 #
 # Created by Lightning_11.
##

# Remove scoreboards
scoreboard objectives remove hp
scoreboard objectives remove hpOld
scoreboard objectives remove fanfare

# Disactivate Furina's burst
tag @a remove furinaBurst

# Print notification
title @a actionbar [{"text":"Burst Ended","color":"red"}]