# control entity player is riding on
# As: Player

# pacify vehicle
team join ra_aly
execute on vehicle run team join ra_aly

# set rotation
execute at @s on vehicle store result entity @s Rotation[0] float 1.0 run data get entity @p Rotation[0]
execute at @s on vehicle store result entity @s Rotation[1] float 1.0 run data get entity @p Rotation[1]

# get player heading
function ride_anything:get_heading

# get motion data
tag @s remove ra_jump
execute on vehicle store result score #ride_anything ra_x run data get entity @s Motion[0] 100.0
execute on vehicle store result score #ride_anything ra_z run data get entity @s Motion[2] 100.0
execute if score @s ra_x matches 70.. if score #ride_anything ra_x matches 0 run tag @s add ra_jump
execute if score @s ra_x matches ..-70 if score #ride_anything ra_x matches 0 run tag @s add ra_jump
execute if score @s ra_z matches 70.. if score #ride_anything ra_z matches 0 run tag @s add ra_jump
execute if score @s ra_z matches ..-70 if score #ride_anything ra_z matches 0 run tag @s add ra_jump
execute as @s[tag=ra_jump] on vehicle as @s[nbt={OnGround:1b}] run data modify entity @s Motion[1] set value 0.4

# move vehicle
execute at @s on vehicle store result entity @s Motion[0] double 0.0021585 run scoreboard players get @p ra_x
execute at @s on vehicle store result entity @s Motion[2] double 0.0021585 run scoreboard players get @p ra_z
