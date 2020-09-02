#Changes the NBT tag of onDrop on the relic to 1 so that this function is not ran repeatedly or more than once.
data modify entity @s Item.tag.onDrop set value 1

#Temporary feedback to tell the developers that this function has been executed.
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 20
playsound minecraft:entity.ender_eye.death ambient @a

#For REDSC, nothing in this file needs changed, just transfer it to the proper location
