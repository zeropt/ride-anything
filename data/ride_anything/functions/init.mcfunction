# Datapack Init
# As: Server

tellraw @a {"text":"Ride Anything!","color":"yellow"}

# datapack variables
scoreboard objectives add ra_id dummy
scoreboard objectives add ra_rayc dummy
scoreboard objectives add ra_var0 dummy
scoreboard objectives add ra_x dummy
scoreboard objectives add ra_y dummy
scoreboard objectives add ra_z dummy

# Initialize Global ID
scoreboard players add #ride_anything ra_id 0

# datapack teams
team add ra_aly
