summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["lava_marker","lava"],NoGravity:1b}
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["lava_marker","netherrack"],NoGravity:1b}
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["lava_marker","coal_block"],NoGravity:1b}
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["lava_marker","fire"],NoGravity:1b}
execute as @e[tag=lava_marker,distance=..1] at @s run spreadplayers ~ ~ 0 20 false @s

execute as @e[tag=lava_marker,tag=lava] at @s run summon falling_block ~ 255 ~ {BlockState:{Name:"minecraft:lava",Properties:{level:"0"}},Time:1,Tags:["falling_lava"]}

execute as @e[tag=lava_marker,tag=netherrack] at @s run summon falling_block ~ 255 ~ {BlockState:{Name:"minecraft:netherrack"},Time:1,Tags:["falling_lava"]}

execute as @e[tag=lava_marker,tag=coal_block] at @s run summon falling_block ~ 255 ~ {BlockState:{Name:"minecraft:coal_block"},Time:1,Tags:["falling_lava"]}

execute as @e[tag=lava_marker,tag=fire] at @s run summon falling_block ~ 255 ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["falling_lava"]}

execute as @e[tag=lava_marker] run kill @s
