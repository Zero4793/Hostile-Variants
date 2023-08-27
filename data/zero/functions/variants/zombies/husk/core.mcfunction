#Zero_4793

#Spawn
execute as @e[type=husk,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=husk,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=husk,tag=!checked,tag=!horde,name="horde"] run data merge entity @s {Tags:["horde","checked"]}
execute as @e[type=husk,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=husk,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=husk,tag=!checked,tag=!swarm,tag=!tank,name="swarm"] run data merge entity @s {Tags:["swarm","checked"]}
execute as @e[type=husk,tag=!checked,tag=!swarmer,tag=!tank,name="swarmer"] run data merge entity @s {Tags:["swarmer","checked"]}
execute as @e[type=husk,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=husk,tag=!checked,scores={zero.num=00..00}] run tag @s add boss
execute as @e[type=husk,tag=!checked,scores={zero.num=01..02}] run tag @s add swarm
execute as @e[type=husk,tag=!checked,scores={zero.num=03..08}] run tag @s add tank
execute as @e[type=husk,tag=!checked,scores={zero.num=09..14}] run tag @s add fire
execute as @e[type=husk,tag=!checked,scores={zero.num=15..34}] run tag @s add horde
execute as @e[type=husk,tag=!checked,scores={zero.num=35..54}] run tag @s add hard
execute as @e[type=husk,tag=!checked,scores={zero.num=55..72}] run tag @s add normal
execute as @e[type=husk,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=husk,tag=!checked] zero.rng 72


#Execute
execute as @e[type=husk,tag=hard] at @s run function zero:variants/zombies/husk/hard
execute as @e[type=husk,tag=horde] at @s run function zero:variants/zombies/husk/horde
execute as @e[type=husk,tag=fire] at @s run function zero:variants/zombies/husk/fire
execute as @e[type=husk,tag=tank] at @s run function zero:variants/zombies/husk/tank
execute as @e[type=husk,tag=swarm] at @s run function zero:variants/zombies/husk/swarm
execute as @e[type=husk,tag=swarmer] at @s run function zero:variants/zombies/husk/swarmer
execute as @e[type=husk,tag=boss] at @s run function zero:variants/zombies/husk/boss
