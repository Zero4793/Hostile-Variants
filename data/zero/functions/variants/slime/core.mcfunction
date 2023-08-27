#Zero_4793

execute as @e[type=slime,nbt={Size:0}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:0}
execute as @e[type=slime,nbt={Size:0}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:1}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:1}
execute as @e[type=slime,nbt={Size:1}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:2}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:2}
execute as @e[type=slime,nbt={Size:2}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:3}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:3}
execute as @e[type=slime,nbt={Size:3}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:4}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:4}
execute as @e[type=slime,nbt={Size:4}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:5}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:5}
execute as @e[type=slime,nbt={Size:5}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:6}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:6}
execute as @e[type=slime,nbt={Size:6}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:7}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:7}
execute as @e[type=slime,nbt={Size:7}] at @s if block ~ ~ ~ lava run tag @s add KILL
execute as @e[type=slime,nbt={Size:8}] at @s if block ~ ~ ~ lava run summon magma_cube ~ ~ ~ {Size:8}
execute as @e[type=slime,nbt={Size:8}] at @s if block ~ ~ ~ lava run tag @s add KILL
tp @e[type=slime,tag=KILL] ~ ~-256 ~

execute as @e[type=magma_cube,nbt={Size:0}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:0}
execute as @e[type=magma_cube,nbt={Size:0}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:1}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:1}
execute as @e[type=magma_cube,nbt={Size:1}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:2}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:2}
execute as @e[type=magma_cube,nbt={Size:2}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:3}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:3}
execute as @e[type=magma_cube,nbt={Size:3}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:4}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:4}
execute as @e[type=magma_cube,nbt={Size:4}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:5}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:5}
execute as @e[type=magma_cube,nbt={Size:5}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:6}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:6}
execute as @e[type=magma_cube,nbt={Size:6}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:7}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:7}
execute as @e[type=magma_cube,nbt={Size:7}] at @s if block ~ ~ ~ water run tag @s add KILL
execute as @e[type=magma_cube,nbt={Size:8}] at @s if block ~ ~ ~ water run summon slime ~ ~ ~ {Size:8}
execute as @e[type=magma_cube,nbt={Size:8}] at @s if block ~ ~ ~ water run tag @s add KILL
tp @e[type=magma_cube,tag=KILL] ~ ~-256 ~

scoreboard players add @e[type=slime] zero.time 1
execute as @e[type=slime,scores={zero.time=200},nbt={Size:0}] run scoreboard players set @s zero.time 0
execute as @e[type=slime,scores={zero.time=0},nbt={Size:0}] run data merge entity @s {Size:1}
execute as @e[type=slime,scores={zero.time=400},nbt={Size:1}] run scoreboard players set @s zero.time -1
execute as @e[type=slime,scores={zero.time=-1},nbt={Size:1}] run data merge entity @s {Size:2}
execute as @e[type=slime,scores={zero.time=800},nbt={Size:2}] run scoreboard players set @s zero.time -2
execute as @e[type=slime,scores={zero.time=-2},nbt={Size:2}] run data merge entity @s {Size:3}
execute as @e[type=slime,scores={zero.time=1600},nbt={Size:3}] run scoreboard players set @s zero.time -3
execute as @e[type=slime,scores={zero.time=-3},nbt={Size:3}] run data merge entity @s {Size:4}
execute as @e[type=slime,scores={zero.time=3200},nbt={Size:4}] run scoreboard players set @s zero.time -4
execute as @e[type=slime,scores={zero.time=-4},nbt={Size:4}] run data merge entity @s {Size:5}
execute as @e[type=slime,scores={zero.time=6400},nbt={Size:5}] run scoreboard players set @s zero.time -5
execute as @e[type=slime,scores={zero.time=-5},nbt={Size:5}] run data merge entity @s {Size:6}
execute as @e[type=slime,scores={zero.time=12800},nbt={Size:6}] run scoreboard players set @s zero.time -6
execute as @e[type=slime,scores={zero.time=-6},nbt={Size:6}] run data merge entity @s {Size:7}
execute as @e[type=slime,scores={zero.time=25600},nbt={Size:7}] run scoreboard players set @s zero.time -7
execute as @e[type=slime,scores={zero.time=-7},nbt={Size:7}] run data merge entity @s {Size:8}

scoreboard players add @e[type=magma_cube] zero.time 1
execute as @e[type=magma_cube,scores={zero.time=200},nbt={Size:0}] run scoreboard players set @s zero.time 0
execute as @e[type=magma_cube,scores={zero.time=0},nbt={Size:0}] run data merge entity @s {Size:1}
execute as @e[type=magma_cube,scores={zero.time=400},nbt={Size:1}] run scoreboard players set @s zero.time -1
execute as @e[type=magma_cube,scores={zero.time=-1},nbt={Size:1}] run data merge entity @s {Size:2}
execute as @e[type=magma_cube,scores={zero.time=800},nbt={Size:2}] run scoreboard players set @s zero.time -2
execute as @e[type=magma_cube,scores={zero.time=-2},nbt={Size:2}] run data merge entity @s {Size:3}
execute as @e[type=magma_cube,scores={zero.time=1600},nbt={Size:3}] run scoreboard players set @s zero.time -3
execute as @e[type=magma_cube,scores={zero.time=-3},nbt={Size:3}] run data merge entity @s {Size:4}
execute as @e[type=magma_cube,scores={zero.time=3200},nbt={Size:4}] run scoreboard players set @s zero.time -4
execute as @e[type=magma_cube,scores={zero.time=-4},nbt={Size:4}] run data merge entity @s {Size:5}
execute as @e[type=magma_cube,scores={zero.time=6400},nbt={Size:5}] run scoreboard players set @s zero.time -5
execute as @e[type=magma_cube,scores={zero.time=-5},nbt={Size:5}] run data merge entity @s {Size:6}
execute as @e[type=magma_cube,scores={zero.time=12800},nbt={Size:6}] run scoreboard players set @s zero.time -6
execute as @e[type=magma_cube,scores={zero.time=-6},nbt={Size:6}] run data merge entity @s {Size:7}
execute as @e[type=magma_cube,scores={zero.time=25600},nbt={Size:7}] run scoreboard players set @s zero.time -7
execute as @e[type=magma_cube,scores={zero.time=-7},nbt={Size:7}] run data merge entity @s {Size:8}