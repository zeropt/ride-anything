# tp linked interaction entity to player
# As: Player

execute at @s anchored eyes positioned ^ ^ ^ as @e[type=interaction,tag=ra_intent] if score @s ra_id = @p ra_id run tp @s ~ ~-0.2 ~
