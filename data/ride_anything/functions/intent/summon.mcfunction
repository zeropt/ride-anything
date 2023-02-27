# summon linked interaction entity on player
# As: Player

# summon
execute at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.2 ~ {height:0.4f,width:0.6f,response:1b,Tags:["ra_new","ra_intent"]}

# copy ra_id
scoreboard players operation @e[type=interaction,tag=ra_new,limit=1] ra_id = @s ra_id

# remove new tag
tag @e[type=interaction,tag=ra_new] remove ra_new
