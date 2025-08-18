#Zero_4793
tag @s add set

#swarmer spawner
scoreboard players add @s zero.age 1
execute if score @s zero.age matches 110 run tp @s ~ ~-.05 ~
execute if score @s zero.age matches 120 run summon husk ~ ~-1 ~ {Tags:[checked,swarmer,unriding,rotten],IsBaby:1b,HandItems:[{id:stone_sword,count:1},{}]}
execute if score @s zero.age matches 120 run kill @s

particle dust{color:[.8,.4,.0],scale:1} ~ ~ ~ .1 .1 .1 0 2
