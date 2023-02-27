# summon or tp linked interaction entity on player
# As: Player

# count linked intents
scoreboard players set #ride_anything ra_var0 0
execute at @s as @e[type=interaction,tag=ra_intent] if score @s ra_id = @p ra_id run scoreboard players add #ride_anything ra_var0 1

# kill if too many
execute if score #ride_anything ra_var0 matches 2.. run function ride_anything:intent/kill

# summon if not the correct amount
execute unless score #ride_anything ra_var0 matches 1 run function ride_anything:intent/summon

# otherwise tp
execute if score #ride_anything ra_var0 matches 1 run function ride_anything:intent/tp
