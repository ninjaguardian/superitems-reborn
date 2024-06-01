execute as @s on attacker run tag @s add testleachattacker

execute as @a[tag=testleachattacker,scores={abilities_disabled=0}] run tag @e remove leachattacker
execute as @a[tag=testleachattacker,scores={abilities_disabled=0}] run tag @e remove leachvictim
execute as @a[tag=testleachattacker,scores={abilities_disabled=0}] run tag @s add leachattacker
execute as @s if entity @a[tag=testleachattacker,tag=leachattacker,scores={abilities_disabled=0}] run tag @s add leachvictim
advancement revoke @a only superitems_reborn:tab/leach
execute if entity @a[tag=testleachattacker,tag=leachattacker,scores={abilities_disabled=0}] run schedule function superitems_reborn:leach/leachline 1t replace
tag @a remove testleachattacker