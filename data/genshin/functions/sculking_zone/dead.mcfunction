##
 # sculking_zone/dead.mcfunction
 # Handle dead sculking zones
 #
 # Created by Lightning_11.
##

setblock ~ ~ ~ air
fill ~16 ~3 ~16 ~-16 ~-3 ~-16 grass_block replace sculk
kill @e[tag=sculking_zone_marker,distance=..0.5]