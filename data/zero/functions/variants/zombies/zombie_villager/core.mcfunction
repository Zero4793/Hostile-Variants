#Zero_4793

#Spawn
execute as @e[type=zombie_villager,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!fast,name="fast"] run data merge entity @s {Tags:["fast","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!ice,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!grappler,name="grappler"] run data merge entity @s {Tags:["grappler","checked"]}


#Randomise
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=00..04}] run tag @s add fire
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=05..18}] run tag @s add ice
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=19..34}] run tag @s add fast
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=35..50}] run tag @s add hard
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=51..58}] run tag @s add grappler
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=59..72}] run tag @s add normal
execute as @e[type=zombie_villager,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=zombie_villager,tag=!checked] zero.rng 72


#Execute
execute as @e[type=zombie_villager,tag=hard] at @s run function zero:variants/zombies/zombie_villager/hard
execute as @e[type=zombie_villager,tag=fast] at @s run function zero:variants/zombies/zombie_villager/fast
execute as @e[type=zombie_villager,tag=ice] at @s run function zero:variants/zombies/zombie_villager/ice
execute as @e[type=zombie_villager,tag=fire] at @s run function zero:variants/zombies/zombie_villager/fire
execute as @e[type=zombie_villager,tag=grappler] at @s run function zero:variants/zombies/zombie_villager/grappler
