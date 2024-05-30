execute as @a[tag=leachvictim] at @s at @e[tag=leachattacker] facing entity @s feet positioned ~ ~1 ~ run function superitems_reborn:raytracing/particle_line
execute as @a[tag=leachvictim] at @s if entity @e[tag=leachattacker,distance=..5] run schedule function superitems_reborn:leach/leachline 1t replace
execute as @a[tag=leachvictim] at @s unless entity @e[tag=leachattacker,distance=..5] run tag @e remove leachattacker
execute as @a[tag=leachvictim] at @s unless entity @e[tag=leachattacker,distance=..5] run tag @a remove leachvictim