#Zero_4793

#General
scoreboard players add @e[type=arrow,tag=temp] zero.time 1
kill @e[type=arrow,tag=temp,scores={zero.time=60}]

function zero:variants/skeletons/skeleton/core
function zero:variants/skeletons/stray/core
function zero:variants/skeletons/wither_skeleton/core

execute if score zero.tick server matches 0 as @e[type=item,nbt={Item:{id:"minecraft:bone"}}] at @s if block ~ ~-1 ~ #base_stone_overworld run function zero:variants/skeletons/infest
