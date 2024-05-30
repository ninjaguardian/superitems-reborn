execute as @s[tag=leachattacker] run schedule clear superitems_reborn:leach/leachline
execute as @s[tag=leachattacker] run tag @e remove leachvictim
execute as @s[tag=leachattacker] run tag @e remove leachattacker
advancement revoke @a only superitems_reborn:tab/leachuserdamaged