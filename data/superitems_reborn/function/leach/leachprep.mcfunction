tag @e remove leachattacker
tag @e remove leachvictim
execute as @s on attacker run tag @s add leachattacker
execute as @s run tag @s add leachvictim
advancement revoke @a only superitems_reborn:tab/leach
schedule function superitems_reborn:leach/leachline 1t replace