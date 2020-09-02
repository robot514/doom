

#### Gruffly:

#displays the coords as long as there is a target player

execute if entity @a[tag=target] run title @a[nbt={SelectedItem:{tag:{targetTracker:1}}}] actionbar ["",{"text":"x [ ","bold":true,"color":"dark_red"},{"score":{"name":"G_x","objective":"coord"},"color":"red"},{"text":" ]","bold":true,"color":"dark_red"},{"text":"    z [ ","bold":true,"color":"dark_blue"},{"score":{"name":"G_z","objective":"coord"},"color":"blue"},{"text":" ]","bold":true,"color":"dark_blue"}]
# (RedSC) If no target exists, will display "No Current Target" above hotbar
execute unless entity @a[tag=target] run title @a[nbt={SelectedItem:{tag:{targetTracker:1}}}] actionbar {"text":"No Current Target","color":"red"}
