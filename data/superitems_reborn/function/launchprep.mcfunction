# execute as @s unless score @s lauch_cooldown matches 68 run scoreboard players add @s lauch_cooldown 1
# execute as @s unless score @s lauch_cooldown matches 68 run function superitems_reborn:unicode_sender/prep_unicode/launch_cooldown
# execute as @s[scores={lauch_cooldown=68}] at @s if predicate superitems_reborn:is_sneaking if predicate superitems_reborn:in_air run function superitems_reborn:skriptlaunch
# execute as @s[scores={lauch_cooldown=68}] at @s if predicate superitems_reborn:is_sneaking if predicate superitems_reborn:in_air run scoreboard players set @s lauch_cooldown 43


execute as @s[scores={lauch_cooldown=68}] at @s run scoreboard players set @s lauch_cooldown 43
execute as @s[scores={lauch_cooldown=43}] at @s run function superitems_reborn:particles/leap
execute as @s[scores={lauch_cooldown=43}] at @s run function superitems_reborn:skriptlaunch
execute as @s[scores={lauch_cooldown=43}] at @s run tag @s add cooldownleap