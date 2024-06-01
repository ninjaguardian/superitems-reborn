scoreboard players add @a lauch_cooldown 0
scoreboard players add @a shadow_cooldown 0
scoreboard players add @a freeze_cooldown 0
scoreboard players set @a playersfrozen 0
scoreboard players add @a abilities_disabled 0
scoreboard players enable @a toggle_abilities

function superitems_reborn:cooldowns/cooldowns

execute as @e[nbt={NoAI:1b},tag=freeze] at @s unless entity @a[predicate=superitems_reborn:freeze_active,distance=..26] run data merge entity @s {NoAI:0b}
execute as @e[tag=freeze] at @s unless entity @a[predicate=superitems_reborn:freeze_active,distance=..26] run tag @s remove freeze

execute as @a if predicate superitems_reborn:in_air if predicate superitems_reborn:is_not_sneaking run scoreboard players set @s candoleap 1
execute as @a unless predicate superitems_reborn:in_air unless predicate superitems_reborn:is_not_sneaking run scoreboard players set @s candoleap 0
execute as @a[scores={abilities_disabled=1}] run scoreboard players set @s candoleap 0

execute as @a[scores={toggle_abilities=1..}] run function superitems_reborn:toggle_abilities

execute as @a[scores={shadow_cooldown=1..41}] unless predicate superitems_reborn:shadow_active run scoreboard players set @s shadow_cooldown 0