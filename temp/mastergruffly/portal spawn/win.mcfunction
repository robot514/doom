gamemode spectator @a

fill 0 80 0 2 80 2 air

execute in minecraft:overworld run tp @a 0 80 0

execute at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 90 1

title @a[tag=win] title {"text":"you win","color":"green"}

schedule function data:gameover 5s