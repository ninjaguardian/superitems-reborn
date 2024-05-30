execute as @s[tag=cooldownleap] unless score @s lauch_cooldown matches 68 run scoreboard players add @s lauch_cooldown 1
execute as @s[tag=cooldownleap] unless score @s lauch_cooldown matches 68 run function superitems_reborn:unicode_sender/prep_unicode/launch_cooldown
execute as @s[tag=cooldownleap,scores={lauch_cooldown=68}] run tag @s remove cooldownleap