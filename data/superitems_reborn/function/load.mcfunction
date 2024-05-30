tellraw Ninjaguardian68 {"text": "superitems reborn 0.0.2 has been loaded sucessfuly", "color": "blue"}
tellraw .ninjaguardian68 {"text": "superitems reborn 0.0.2 has been loaded sucessfuly", "color": "blue"}
scoreboard objectives add lauch_cooldown dummy
scoreboard objectives add shadow_cooldown dummy
schedule clear superitems_reborn:recursivecooldowns/launch
tag @e remove leachvictim
tag @e remove leachattacker
tag @e remove frozen
tag @e remove freeze_cooldown
advancement revoke @a only superitems_reborn:tab/leach
schedule clear superitems_reborn:leach/leachline
advancement revoke @a only superitems_reborn:tab/leachuserdamaged
kill @e[type=armor_stand,tag=tptest]