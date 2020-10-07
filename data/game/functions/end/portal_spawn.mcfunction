fill 0 67 0 -2 67 -2 minecraft:end_portal


execute at @a run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 0.5

title @a title {"text":" THE PORTAL IS OPEN","color":"red"}

scoreboard players set .portalSpawned Config 1
