execute as @s[tag=!freeze_cooldown,scores={abilities_disabled=0}] unless score @s freeze_cooldown matches 68 if predicate superitems_reborn:is_sneaking run scoreboard players remove @s freeze_cooldown 1
execute as @s[tag=!freeze_cooldown] unless score @s freeze_cooldown matches 100 if predicate superitems_reborn:is_not_sneaking run scoreboard players add @s freeze_cooldown 1
execute as @s[tag=freeze_cooldown] unless score @s freeze_cooldown matches 100 run scoreboard players add @s freeze_cooldown 1
execute as @s unless score @s freeze_cooldown matches 100 run function superitems_reborn:unicode_sender/prep_unicode/freeze_cooldown
execute as @s[scores={freeze_cooldown=68},tag=!freeze_cooldown] run tag @s add freeze_cooldown
execute as @s[scores={freeze_cooldown=100},tag=freeze_cooldown] run tag @s remove freeze_cooldown
execute as @s[scores={abilities_disabled=0}] unless score @s freeze_cooldown matches 68 unless entity @s[tag=freeze_cooldown] if predicate superitems_reborn:is_sneaking at @s as @a[distance=1..25,tag=!freeze] at @s run function superitems_reborn:freeze/getfrozen
execute as @s[scores={abilities_disabled=0}] unless score @s freeze_cooldown matches 68 unless entity @s[tag=freeze_cooldown] if predicate superitems_reborn:is_sneaking at @s as @a[distance=1..25,tag=freeze] at @s run function superitems_reborn:freeze/freezetplogic
execute as @s[scores={abilities_disabled=0}] unless score @s freeze_cooldown matches 68 unless entity @s[tag=freeze_cooldown] if predicate superitems_reborn:is_sneaking at @s as @e[distance=1..25,nbt=!{NoAI:1b},type=!player] run tag @s add freeze
execute as @s[scores={abilities_disabled=0}] unless score @s freeze_cooldown matches 68 unless entity @s[tag=freeze_cooldown] if predicate superitems_reborn:is_sneaking at @s as @e[distance=1..25,nbt=!{NoAI:1b},tag=freeze,type=!player] run data merge entity @s {NoAI:1b} 
execute as @s[scores={abilities_disabled=0}] unless score @s freeze_cooldown matches 68 unless entity @s[tag=freeze_cooldown] if predicate superitems_reborn:is_sneaking at @s run function superitems_reborn:freeze/freezepart
execute as @s if score @s freeze_cooldown matches 68 at @s as @e[distance=..26,nbt={NoAI:1b},tag=freeze] run data merge entity @s {NoAI:0b}
execute as @s if score @s freeze_cooldown matches 68 at @s as @e[distance=..26,tag=freeze] run tag @s remove freeze
execute as @s[tag=freeze_cooldown] at @s as @e[distance=..26,nbt={NoAI:1b},tag=freeze] run data merge entity @s {NoAI:0b}
execute as @s[tag=freeze_cooldown] at @s as @e[distance=..26,tag=freeze] run tag @s remove freeze
execute as @s[scores={abilities_disabled=1}] at @s as @e[distance=..26,nbt={NoAI:1b},tag=freeze] run data merge entity @s {NoAI:0b}
execute as @s[scores={abilities_disabled=1}] at @s as @e[distance=..26,tag=freeze] run tag @s remove freeze