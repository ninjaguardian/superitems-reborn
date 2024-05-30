summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Tags:["tptest"]}
execute store result entity @e[type=armor_stand,tag=tptest,limit=1] Pos[0] double 0.001 run scoreboard players get @s playerX
execute store result entity @e[type=armor_stand,tag=tptest,limit=1] Pos[1] double 0.001 run scoreboard players get @s playerY
execute store result entity @e[type=armor_stand,tag=tptest,limit=1] Pos[2] double 0.001 run scoreboard players get @s playerZ
#tag @s add currenttp
#execute as @e[type=armor_stand,tag=tptest] at @s rotated as @a[tag=currenttp,limit=1] run tp ~ ~ ~
execute as @s at @e[type=armor_stand,tag=tptest,limit=1] rotated as @s as @e[type=armor_stand,tag=tptest] run tp ~ ~ ~

tp @s @e[type=armor_stand,tag=tptest,limit=1]
title @s actionbar ["",{"text":"FROZEN!","bold":true,"underlined":true,"color":"aqua"}]
execute as @s at @s run scoreboard players add @a[scores={selectedspell=3},distance=..26] playersfrozen 1
kill @e[type=armor_stand,tag=tptest]