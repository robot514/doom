
execute at @a run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2



scoreboard players operation z target_coords = G_z coord
scoreboard players operation y target_coords = G_y coord
scoreboard players operation x target_coords = G_x coord

#puts them all under target_coords


execute store result score G_z coord run data get entity @e[tag=target,limit=1] Pos[2]

#stores the z value of the target player in G_z



execute store result score G_y coord run data get entity @e[tag=target,limit=1] Pos[1]

#stores the y value of the target player in G_y


execute store result score G_x coord run data get entity @e[tag=target,limit=1] Pos[0]

#stores the x value of the target player in G_x
