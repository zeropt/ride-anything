# mount raysource on entity
# As: Entity

# clear ray count
scoreboard players reset #ride_anything ra_rayc

# dismount raysource
ride @p[tag=ra_raysrc] dismount

# ride entity
ride @p[tag=ra_raysrc] mount @s
