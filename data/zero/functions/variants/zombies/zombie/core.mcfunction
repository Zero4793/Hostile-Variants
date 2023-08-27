#Zero_4793

#Spawn
execute as @e[type=zombie,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!horde,name="horde"] run data merge entity @s {Tags:["horde","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!ice,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!horse,name="horse"] run data merge entity @s {Tags:["horse","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!necro,name="necro"] run data merge entity @s {Tags:["necro","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=zombie,tag=!checked,scores={zero.num=00..00}] run tag @s add boss
execute as @e[type=zombie,tag=!checked,scores={zero.num=01..02}] run tag @s add necro
execute as @e[type=zombie,tag=!checked,scores={zero.num=03..06}] run tag @s add tank
execute as @e[type=zombie,tag=!checked,scores={zero.num=07..10}] run tag @s add fire
execute as @e[type=zombie,tag=!checked,scores={zero.num=11..18}] run tag @s add horse
execute as @e[type=zombie,tag=!checked,scores={zero.num=19..32}] run tag @s add ice
execute as @e[type=zombie,tag=!checked,scores={zero.num=33..48}] run tag @s add horde
execute as @e[type=zombie,tag=!checked,scores={zero.num=49..64}] run tag @s add hard
execute as @e[type=zombie,tag=!checked,scores={zero.num=65..72}] run tag @s add normal
execute as @e[type=zombie,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=zombie,tag=!checked] zero.rng 72


#Execute
execute as @e[type=zombie,tag=hard] at @s run function zero:variants/zombies/zombie/hard
execute as @e[type=zombie,tag=horde] at @s run function zero:variants/zombies/zombie/horde
execute as @e[type=zombie,tag=ice] at @s run function zero:variants/zombies/zombie/ice
execute as @e[type=zombie,tag=fire] at @s run function zero:variants/zombies/zombie/fire
execute as @e[type=zombie,tag=horse] at @s run function zero:variants/zombies/zombie/horse
execute as @e[type=zombie,tag=tank] at @s run function zero:variants/zombies/zombie/tank
execute as @e[type=zombie,tag=necro] at @s run function zero:variants/zombies/zombie/necro
execute as @e[type=zombie,tag=boss] at @s run function zero:variants/zombies/zombie/boss
