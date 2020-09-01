#Calls ondrop function for relics that are both on the ground and haven't been dropped before.
execute as @e[type=item,nbt={Item:{tag:{isRelic:1,onDrop:0}}}] at @s run function <namespace>:ondrop
