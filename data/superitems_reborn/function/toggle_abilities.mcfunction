execute as @s run scoreboard players set @s toggle_abilities 0



execute as @s[scores={abilities_disabled=0}] run title @s actionbar ["",{"text":"Toggled superitems ","bold":true,"color":"aqua"},{"text":"off","bold":true,"color":"red"}]
execute as @s[scores={abilities_disabled=0}] run scoreboard players set @s abilities_disabled 3
execute as @s[scores={abilities_disabled=1}] run title @s actionbar ["",{"text":"Toggled superitems ","bold":true,"color":"aqua"},{"text":"on","bold":true,"color":"green"}]
execute as @s[scores={abilities_disabled=1}] run scoreboard players set @s abilities_disabled 0
execute as @s[scores={abilities_disabled=3}] run scoreboard players set @s abilities_disabled 1

execute as @s[tag=leachattacker,scores={abilities_disabled=1}] run schedule clear superitems_reborn:leach/leachline
execute as @s[tag=leachattacker,scores={abilities_disabled=1}] run tag @e remove leachvictim
execute as @s[tag=leachattacker,scores={abilities_disabled=1}] run tag @e remove leachattacker