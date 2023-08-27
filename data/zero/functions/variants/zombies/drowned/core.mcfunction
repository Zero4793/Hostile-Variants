#Zero_4793

#Spawn
execute as @e[type=drowned,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!horde,name="horde"] run data merge entity @s {Tags:["horde","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=drowned,tag=!checked,scores={zero.num=00..00}] run tag @s add boss
execute as @e[type=drowned,tag=!checked,scores={zero.num=01..04}] run tag @s add tank
execute as @e[type=drowned,tag=!checked,scores={zero.num=05..10}] run tag @s add horde
execute as @e[type=drowned,tag=!checked,scores={zero.num=11..24}] run tag @s add hard
execute as @e[type=drowned,tag=!checked,scores={zero.num=25..32}] run tag @s add normal
execute as @e[type=drowned,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=drowned,tag=!checked] zero.rng 44


#Execute
execute as @e[type=drowned,tag=hard] at @s run function zero:variants/zombies/drowned/hard
execute as @e[type=drowned,tag=horde] at @s run function zero:variants/zombies/drowned/horde
execute as @e[type=drowned,tag=tank] at @s run function zero:variants/zombies/drowned/tank
execute as @e[type=drowned,tag=boss] at @s run function zero:variants/zombies/drowned/boss
