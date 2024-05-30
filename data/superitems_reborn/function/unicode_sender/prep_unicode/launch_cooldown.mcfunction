execute as @s store result storage superitems_reborn:unicode unicode_num int 1 run scoreboard players get @s lauch_cooldown
execute as @s[scores={lauch_cooldown=..9}] run function superitems_reborn:unicode_sender/show_unicode1 with storage superitems_reborn:unicode
execute as @s[scores={lauch_cooldown=10..}] if entity @s[scores={lauch_cooldown=..99}] run function superitems_reborn:unicode_sender/show_unicode2 with storage superitems_reborn:unicode
execute as @s[scores={lauch_cooldown=100..}] run function superitems_reborn:unicode_sender/show_unicode3 with storage superitems_reborn:unicode