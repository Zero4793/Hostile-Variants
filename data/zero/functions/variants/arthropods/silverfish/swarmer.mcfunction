#Zero_4793

tag @s add set

#swarmer spawner
scoreboard players add @s zero.time 1
execute if score @s zero.time matches 110 run tp @s ~ ~-.05 ~
execute if score @s zero.time matches 120 run summon husk ~ ~-1 ~ {Tags:[checked,swarmer],IsBaby:1}
execute if score @s zero.time matches 120 run kill @s

particle dust .8 .4 0 1 ~ ~ ~ .1 .1 .1 0 2

#look at husk/swarmer for next step
