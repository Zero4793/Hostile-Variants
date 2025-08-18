#Zero_4793

#Spawn
execute as @e[type=creeper,tag=!checked,tag=!queen,name="queen"] run data merge entity @s {Tags:["queen","checked"]}
execute as @e[type=creeper,tag=!checked,tag=!baby,name="baby"] run data merge entity @s {Tags:["baby","checked"]}


#Randomise
execute as @e[type=creeper,tag=!checked] store result score @s random run random value 0..50
execute as @e[type=creeper,tag=!checked,scores={random=00..10}] run tag @s add queen
execute as @e[type=creeper,tag=!checked,scores={random=11..20}] run tag @s add baby
tag @e[type=creeper] add checked


#Execute
execute as @e[type=creeper,tag=baby,tag=!set] run data merge entity @s {Fuse:20,ExplosionRadius:1,Health:5,attributes:[{id:generic.max_health,base:5.0},{id:"generic.scale",base:0.5},{id:"generic.movement_speed",base:0.35}],Tags:[set]}
execute as @e[type=creeper,tag=queen] at @s run function hostile_variants:creeper/queen

