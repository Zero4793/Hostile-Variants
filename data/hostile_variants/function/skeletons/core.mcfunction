#Zero_4793

#General
scoreboard players add @e[type=arrow,tag=temp] zero.age 1
kill @e[type=arrow,tag=temp,scores={zero.age=60}]

function hostile_variants:skeletons/skeleton/core
function hostile_variants:skeletons/stray/core
function hostile_variants:skeletons/wither_skeleton/core

execute if score zero.tick server matches 0 as @e[type=item,nbt={Item:{id:"minecraft:bone"}}] at @s if block ~ ~-1 ~ #base_stone_overworld run function hostile_variants:skeletons/infest

