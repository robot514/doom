gamemode spectator @a

fill 0 80 0 2 80 2 air

execute in minecraft:overworld run tp @a 0 80 0

execute at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 90 1

title @a[tag=win] title {"text":"You Win!","color":"green"}
title @a[tag=!win] title {"text":"Game Over!","color":"dark_red"}
tellraw @a ["",{"text":"Game >> ","color":"gray"},{"selector":"@a[tag=win]","color":"aqua"},{"text":" has won the game! ","color":"white"},{"text":"Game has ended!","color":"light_purple"}]
