

#### Gruffly:

#displays the coords as long as there is a target player

execute if entity @a[tag=target] run title @a[nbt={SelectedItem:{tag:{targetTracker:1}}}] actionbar ["",{"text":"x [ ","bold":true,"color":"dark_red"},{"score":{"name":"G_x","objective":"coord"},"color":"red"},{"text":" ]","bold":true,"color":"dark_red"},{"text":"    z [ ","bold":true,"color":"dark_blue"},{"score":{"name":"G_z","objective":"coord"},"color":"blue"},{"text":" ]","bold":true,"color":"dark_blue"}]
# (RedSC) If no target exists, will display "No Current Target" above hotbar
execute unless entity @a[tag=target] run title @a[nbt={SelectedItem:{tag:{targetTracker:1}}}] actionbar {"text":"No Current Target","color":"red"}

# Ends that game when a player enters the end
execute if entity @e[nbt={Dimension:"minecraft:the_end"}] run function game:end/win

#### Hallzmine:

#Hallzmine: Calls ondrop function for relics that are both on the ground and haven't been dropped before.
execute as @e[type=item,nbt={Item:{tag:{isRelic:1,onDrop:0}}}] at @s run function game:itemdrop/ondrop


#### RedSC:

# Players Won't be able to drop the Relic armor
execute as @e[nbt={Item:{tag:{isRelic:1}}}] run data merge entity @s {PickupDelay:0}
