particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~
execute positioned ~ ~-1.8 ~ unless entity @s[distance=..2] positioned ~ ~1.8 ~ positioned ^ ^ ^0.5 run function superitems_reborn:raytracing/particle_line


#   EXAMPLE   #


#   execute as ninjaguardian68 at @s at @e[type=minecraft:chicken,limit=1,sort=nearest] facing entity @s feet positioned ~ ~1 ~ run function superitems_revamped:raytracing/particle_line
#draws line from ninjaguardian68 chest to chicken's head (if was player, chest)

#   execute as <from> at @s at <to> facing entity @s feet positioned ~ ~1 ~ run function superitems_revamped:raytracing/particle_line
#   one player's chest to another