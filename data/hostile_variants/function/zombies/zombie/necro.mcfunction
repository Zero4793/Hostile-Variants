#Zero_4793

attribute @s[tag=!set] movement_speed base set .18
execute as @s[tag=!set] run item replace entity @s armor.head with iron_helmet
execute as @s[tag=!set] run item replace entity @s weapon.mainhand with iron_hoe
tag @s add set

particle smoke ~ ~1 ~ .2 .6 .2 0 2
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..16] run scoreboard players add @s zero.age 5