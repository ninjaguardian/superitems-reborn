scoreboard players add @a lauch_cooldown 0
scoreboard players add @a shadow_cooldown 0
scoreboard players add @a freeze_cooldown 0
scoreboard players set @a playersfrozen 0

function superitems_reborn:cooldowns/cooldowns

execute as @e[nbt={NoAI:1b},tag=freeze] at @s unless entity @a[predicate=superitems_reborn:freeze_active,distance=..26] run data merge entity @s {NoAI:0b}
execute as @e[tag=freeze] at @s unless entity @a[predicate=superitems_reborn:freeze_active,distance=..26] run tag @s remove freeze