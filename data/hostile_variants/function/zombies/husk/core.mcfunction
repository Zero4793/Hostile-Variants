#Spawn
execute as @e[type=husk,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=husk,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=husk,tag=!checked,tag=!horde,name="horde"] run data merge entity @s {Tags:["horde","checked"]}
execute as @e[type=husk,tag=!checked,tag=!horse,name="knight"] run data merge entity @s {Tags:["horse","checked"]}
execute as @e[type=husk,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=husk,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}
execute as @e[type=husk,tag=!checked,tag=!swarm,tag=!tank,name="swarm"] run data merge entity @s {Tags:["swarm","checked"]}
execute as @e[type=husk,tag=!checked,tag=!fire,tag=!tank,name="fire"] run data merge entity @s {Tags:["fire","checked"]}

#Random
execute as @e[type=minecraft:husk,tag=!checked] store result score @s random run random value 0..150
execute as @e[type=husk,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=husk,tag=!checked,scores={random=01..05}] run tag @s add swarm
execute as @e[type=husk,tag=!checked,scores={random=05..20}] run tag @s add tank
execute as @e[type=husk,tag=!checked,scores={random=21..30}] run tag @s add knight
execute as @e[type=husk,tag=!checked,scores={random=31..40}] run tag @s add fire
execute as @e[type=husk,tag=!checked,scores={random=41..80}] run tag @s add hard
execute as @e[type=husk,tag=!checked,scores={random=81..150}] run tag @s add horde
tag @e[type=husk] add checked

#Execute
execute as @e[type=husk,tag=hard] at @s run function hostile_variants:zombies/husk/hard
execute as @e[type=husk,tag=horde] at @s run function hostile_variants:zombies/husk/horde
execute as @e[type=husk,tag=knight] at @s run function hostile_variants:zombies/husk/knight
execute as @e[type=husk,tag=tank] at @s run function hostile_variants:zombies/husk/tank
execute as @e[type=husk,tag=boss] at @s run function hostile_variants:zombies/zombie/boss
execute as @e[type=husk,tag=swarm] at @s run function hostile_variants:zombies/husk/swarm
execute as @e[type=husk,tag=fire] at @s run function hostile_variants:zombies/husk/fire

execute as @e[type=silverfish,tag=swarmer] at @s run function hostile_variants:zombies/husk/silver
execute as @e[type=camel] at @s run function hostile_variants:zombies/husk/camel
