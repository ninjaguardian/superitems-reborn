tellraw Ninjaguardian68 {"text": "superitems reborn 0.0.2 has been loaded sucessfuly", "color": "blue"}
tellraw .ninjaguardian68 {"text": "superitems reborn 0.0.2 has been loaded sucessfuly", "color": "blue"}
scoreboard objectives add lauch_cooldown dummy
scoreboard objectives add freeze_cooldown dummy
scoreboard objectives add candoleap dummy
scoreboard objectives add playersfrozen dummy
scoreboard objectives add shadow_cooldown dummy
scoreboard objectives add toggle_abilities trigger
scoreboard objectives add abilities_disabled dummy
schedule clear superitems_reborn:leach/leachline
schedule clear superitems_reborn:recursivecooldowns/launch
execute as @e[tag=frozen] run data merge entity @s {NoAI:0b}
tag @e remove leachvictim
tag @e remove leachattacker
tag @e remove frozen
tag @e remove freeze_cooldown
tag @e remove cooldownleap
advancement revoke @a only superitems_reborn:tab/leach
advancement revoke @a only superitems_reborn:tab/leachuserdamaged
kill @e[type=armor_stand,tag=tptest]