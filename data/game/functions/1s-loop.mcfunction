
# RedSC:

# Resets all players' RelicCount scoreboard
scoreboard players reset @a RelicCount

# Adds 1 RelicCount per piece of armor worn
execute as @a at @s if data entity @s Inventory[{Slot:100b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1
execute as @a at @s if data entity @s Inventory[{Slot:101b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1
execute as @a at @s if data entity @s Inventory[{Slot:102b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1
execute as @a at @s if data entity @s Inventory[{Slot:103b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1

execute as @a[scores={RelicCount=3..}] run tag @s add target
execute as @a[scores={RelicCount=..2}] run tag @s remove target



# Reschedules the function
schedule function game:1s-loop 1s
