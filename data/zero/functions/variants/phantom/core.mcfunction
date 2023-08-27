#Zero_4793

#Spawn
execute as @e[type=phantom,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!witchy_spawn,name="witchy"] run data merge entity @s {Tags:["witchy_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!turret_spawn,name="turret"] run data merge entity @s {Tags:["turret_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!bomber_spawn,name="bomber"] run data merge entity @s {Tags:["bomber_spawn","checked"]}
execute as @e[type=phantom,tag=!checked,tag=!evoker_spawn,name="evoker"] run data merge entity @s {Tags:["evoker_spawn","checked"]}


#Randomise
execute as @e[type=phantom,tag=!checked,scores={zero.num=00..15}] run tag @s add normal
execute as @e[type=phantom,tag=!checked,scores={zero.num=16..16}] run tag @s add evoker_spawn
execute as @e[type=phantom,tag=!checked,scores={zero.num=17..20}] run tag @s add bomber_spawn
execute as @e[type=phantom,tag=!checked,scores={zero.num=21..24}] run tag @s add turret_spawn
execute as @e[type=phantom,tag=!checked,scores={zero.num=25..32}] run tag @s add witchy_spawn
execute as @e[type=phantom,tag=!checked,scores={zero.num=33..}] run tag @s add normal
execute as @e[type=phantom,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=phantom,tag=!checked] zero.rng 64


#Execute
execute as @e[type=phantom,tag=witchy_spawn] at @s run function zero:variants/phantom/spawn
execute as @e[type=phantom,tag=turret_spawn] at @s run function zero:variants/phantom/spawn
execute as @e[type=phantom,tag=bomber_spawn] at @s run function zero:variants/phantom/spawn
execute as @e[type=phantom,tag=evoker_spawn] at @s run function zero:variants/phantom/spawn
execute as @e[type=phantom,tag=bomber] at @s run function zero:variants/phantom/bomber
execute as @e[type=phantom,tag=normal] at @s run function zero:variants/phantom/normal
