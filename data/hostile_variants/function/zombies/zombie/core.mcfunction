#Spawn
execute as @e[type=zombie,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!horde,name="horde"] run data merge entity @s {Tags:["horde","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!ice,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!horse,name="knight"] run data merge entity @s {Tags:["horse","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!necro,name="necro"] run data merge entity @s {Tags:["necro","checked"]}
execute as @e[type=zombie,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}

#random
execute as @e[type=minecraft:zombie,tag=!checked] store result score @s random run random value 0..200
execute as @e[type=zombie,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=zombie,tag=!checked,scores={random=01..05}] run tag @s add necro
execute as @e[type=zombie,tag=!checked,scores={random=06..20}] run tag @s add tank
execute as @e[type=zombie,tag=!checked,scores={random=21..30}] run tag @s add knight
execute as @e[type=zombie,tag=!checked,scores={random=31..40}] run tag @s add fire
execute as @e[type=zombie,tag=!checked,scores={random=41..50}] run tag @s add ice
execute as @e[type=zombie,tag=!checked,scores={random=51..60}] run tag @s add hard
execute as @e[type=zombie,tag=!checked,scores={random=61..150}] run tag @s add horde
tag @e[type=zombie] add checked

#Execute
execute as @e[type=zombie,tag=hard] at @s run function hostile_variants:zombies/zombie/hard
execute as @e[type=zombie,tag=horde] at @s run function hostile_variants:zombies/zombie/horde
execute as @e[type=zombie,tag=ice] at @s run function hostile_variants:zombies/zombie/ice
execute as @e[type=zombie,tag=fire] at @s run function hostile_variants:zombies/zombie/fire
execute as @e[type=zombie,tag=knight] at @s run function hostile_variants:zombies/zombie/knight
execute as @e[type=zombie,tag=tank] at @s run function hostile_variants:zombies/zombie/tank
execute as @e[type=zombie,tag=necro] at @s run function hostile_variants:zombies/zombie/necro
execute as @e[type=zombie,tag=boss] at @s run function hostile_variants:zombies/zombie/boss

execute as @e[type=zombie_horse] at @s run function hostile_variants:zombies/zombie/horse
