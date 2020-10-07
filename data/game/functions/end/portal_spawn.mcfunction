fill 0 80 0 -2 80 -2 minecraft:end_portal


execute at @a run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 0.5

title @a title {"text":" THE PORTAL IS OPEN","color":"red"}

scoreboard players set .portalSpawned Config 1
