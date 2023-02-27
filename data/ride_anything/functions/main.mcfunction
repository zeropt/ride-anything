# Datapack Main
# As: Server

#New Player
execute as @a unless score @s ra_id matches 0.. run function ride_anything:new_player

# summon or kill linked interaction entity
tag @a remove ra_giveintent
execute as @a unless predicate ride_anything:is_sneaking if predicate ride_anything:holding_saddle if predicate ride_anything:see_rideable run tag @s add ra_giveintent
execute as @a[tag=ra_giveintent] run function ride_anything:intent/give
execute as @a[tag=!ra_giveintent] run function ride_anything:intent/kill

# control vehicle
team empty ra_aly
execute as @a unless predicate ride_anything:no_coas if predicate ride_anything:on_controllable run function ride_anything:control_vehicle
