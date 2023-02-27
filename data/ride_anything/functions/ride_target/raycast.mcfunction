# Ride Target Raycast
# As: Player

# Particles
#particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal

# Decrement ray count
scoreboard players remove #ride_anything ra_rayc 1

# check for target
execute positioned ~ ~ ~ as @e[type=!#ride_anything:unrideable,dx=0] run function ride_anything:ride_target/mount_raysrc

# raycast
execute if score #ride_anything ra_rayc matches 1.. positioned ^ ^ ^0.2 run function ride_anything:ride_target/raycast
