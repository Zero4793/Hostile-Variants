#Zero_4793

#Spawn
execute as @e[type=phantom,tag=!checked,tag=!witchy_spawn,name="witchy"] run data merge entity @s {Tags:["witchy_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!turret_spawn,name="turret"] run data merge entity @s {Tags:["turret_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!bomber_spawn,name="bomber"] run data merge entity @s {Tags:["bomber_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!evoker_spawn,name="evoker"] run data merge entity @s {Tags:["evoker_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!evoker_spawn,name="demons"] run data merge entity @s {Tags:["demons_spawn","checked"]}


#Randomise
execute as @e[type=phantom,tag=!checked] store result score @s random run random value 0..50
execute as @e[type=phantom,tag=!checked,scores={random=00..15}] run tag @s add normal
execute as @e[type=phantom,tag=!checked,scores={random=16..16}] run tag @s add evoker_spawn
execute as @e[type=phantom,tag=!checked,scores={random=17..17}] run tag @s add bomber_spawn
execute as @e[type=phantom,tag=!checked,scores={random=18..18}] run tag @s add turret_spawn
execute as @e[type=phantom,tag=!checked,scores={random=19..20}] run tag @s add witchy_spawn
execute as @e[type=phantom,tag=!checked,scores={random=21..22}] run tag @s add demons_spawn
execute as @e[type=phantom,tag=!checked,scores={random=23..50}] run tag @s add EXILE
tag @e[type=phantom] add checked


#Execute
execute as @e[type=phantom,tag=normal] at @s run function hostile_variants:phantom/normal
execute as @e[type=phantom,tag=bomber] at @s run function hostile_variants:phantom/bomber
execute as @e[type=phantom,tag=dementor] at @s run function hostile_variants:phantom/dementor
execute as @e[type=phantom,tag=witchy_spawn] at @s run function hostile_variants:phantom/spawn
execute as @e[type=phantom,tag=turret_spawn] at @s run function hostile_variants:phantom/spawn
execute as @e[type=phantom,tag=bomber_spawn] at @s run function hostile_variants:phantom/spawn
execute as @e[type=phantom,tag=evoker_spawn] at @s run function hostile_variants:phantom/spawn
execute as @e[type=phantom,tag=demons_spawn] at @s run function hostile_variants:phantom/spawn

