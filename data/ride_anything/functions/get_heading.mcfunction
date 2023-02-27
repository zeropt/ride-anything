# save player cartesian heading data to scoreboard
# As: Player

# summon marker
execute at @s run summon marker ~ ~ ~ {Tags:["ra_rotated"]} 
execute at @s store result entity @e[type=marker,tag=ra_rotated,limit=1] Rotation[0] float 1.0 run data get entity @p Rotation[0]
execute as @e[type=marker,tag=ra_rotated] at @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["ra_heading"]}
kill @e[type=marker,tag=ra_rotated]

# store player data
execute store result score #ride_anything ra_x run data get entity @s Pos[0] 100.0
execute store result score #ride_anything ra_z run data get entity @s Pos[2] 100.0

# store marker data
execute store result score @s ra_x run data get entity @e[type=marker,tag=ra_heading,limit=1] Pos[0] 100.0
execute store result score @s ra_z run data get entity @e[type=marker,tag=ra_heading,limit=1] Pos[2] 100.0

# calculate the difference
scoreboard players operation @s ra_x -= #ride_anything ra_x
scoreboard players operation @s ra_z -= #ride_anything ra_z

# kill marker
kill @e[type=marker,tag=ra_heading]
