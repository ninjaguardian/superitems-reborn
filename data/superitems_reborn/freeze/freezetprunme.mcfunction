execute at @s as @a[distance=1..25] unless score @s selectedspell matches 3 store result score @s playerX run data get entity @s Pos[0] 1000
execute at @s as @a[distance=1..25] unless score @s selectedspell matches 3 store result score @s playerY run data get entity @s Pos[1] 1000
execute at @s as @a[distance=1..25] unless score @s selectedspell matches 3 store result score @s playerZ run data get entity @s Pos[2] 1000
execute at @s as @a[distance=1..25] unless score @s selectedspell matches 3 run tag @s add freeze
#execute at @s as @a[distance=1..25,nbt=!{SelectedItem:{tag:{CustomModelData:126721}}}] run say tagged
execute at @s as @a[distance=1..25] unless score @s selectedspell matches 3 at @s run function superitems_reborn:freeze/freezetpfunc