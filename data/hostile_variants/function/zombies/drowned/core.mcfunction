#Spawn
execute as @e[type=drowned,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!horde,name="horde"] run data merge entity @s {Tags:["horde","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!horse,name="knight"] run data merge entity @s {Tags:["horse","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=drowned,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}

#random
execute as @e[type=minecraft:drowned,tag=!checked] store result score @s random run random value 0..100
execute as @e[type=drowned,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=drowned,tag=!checked,scores={random=01..5}] run tag @s add tank
execute as @e[type=drowned,tag=!checked,scores={random=06..20}] run tag @s add knight
execute as @e[type=drowned,tag=!checked,scores={random=21..30}] run tag @s add hard
execute as @e[type=drowned,tag=!checked,scores={random=31..50}] run tag @s add horde
tag @e[type=drowned] add checked

#Execute
execute as @e[type=drowned,tag=hard] at @s run function hostile_variants:zombies/drowned/hard
execute as @e[type=drowned,tag=horde] at @s run function hostile_variants:zombies/drowned/horde
execute as @e[type=drowned,tag=knight] at @s run function hostile_variants:zombies/drowned/knight
execute as @e[type=drowned,tag=tank] at @s run function hostile_variants:zombies/drowned/tank
execute as @e[type=drowned,tag=boss] at @s run function hostile_variants:zombies/zombie/boss

execute as @e[type=dolphin] at @s run function hostile_variants:zombies/drowned/dolphin

#setting spawn chances!