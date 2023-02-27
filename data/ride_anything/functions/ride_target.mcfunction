# mount target via raycasting
# As: Player

# set raycast count
scoreboard players set #ride_anything ra_rayc 25

# tag source
tag @s add ra_raysrc

# raycast
execute at @s anchored eyes positioned ^ ^ ^0.2 run function ride_anything:ride_target/raycast

# remove tags
tag @s remove ra_raysrc
