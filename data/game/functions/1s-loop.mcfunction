
#### RedSC:

### Coord Leak Commands

# Starts the Coord Leaking When 3 pieces of armor are worn
execute as @a[tag=target] unless score .targetExists Config matches 1 run function game:coord_leak/clock
execute unless entity @a[tag=target] if score .targetExists Config matches 1 run function game:coord_leak/reset

### Relic Count Commands

# Resets all players' RelicCount scoreboard
scoreboard players reset @a RelicCount

# Adds 1 RelicCount per piece of armor worn
execute as @a at @s if data entity @s Inventory[{Slot:100b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1
execute as @a at @s if data entity @s Inventory[{Slot:101b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1
execute as @a at @s if data entity @s Inventory[{Slot:102b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1
execute as @a at @s if data entity @s Inventory[{Slot:103b,tag:{isRelic:1}}] run scoreboard players add @s RelicCount 1

execute if entity @a[scores={RelicCount=4..}] unless score .portalSpawned Config matches 1 run function game:end/portal_spawn 

execute as @a[scores={RelicCount=3..}] run tag @s add target
execute as @a[scores={RelicCount=..2}] run tag @s remove target



# Reschedules the function
schedule function game:1s-loop 1s
