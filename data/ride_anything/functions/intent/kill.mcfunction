# kill linked interaction entity
# As: Player

execute at @s as @e[type=interaction,tag=ra_intent] if score @s ra_id = @p ra_id run kill @s
