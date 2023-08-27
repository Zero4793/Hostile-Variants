#Zero_4793

#General
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] run function zero:variants/zombies/resurrection
execute as @e[type=#zero:zombies,tag=rotten] at @s run function zero:variants/zombies/rotten

scoreboard players add @e[type=zombie_horse] zero.age 1
execute as @e[type=zombie_horse,scores={zero.age=1200..}] at @s run tp @s ~ ~-.05 ~

function zero:variants/zombies/zombie/core
function zero:variants/zombies/husk/core
function zero:variants/zombies/drowned/core
function zero:variants/zombies/zombie_villager/core

