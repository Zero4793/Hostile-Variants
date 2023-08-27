#Zero_4793

#Spawn
execute as @e[type=silverfish,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=silverfish,tag=!checked,tag=!swarmer,name="swarmer"] run data merge entity @s {Tags:["swarmer","checked"]}
execute as @e[type=silverfish,tag=!checked,tag=!vex,name="vex"] run data merge entity @s {Tags:["vex","checked"]}



#Randomise
execute as @e[type=silverfish,tag=!checked,scores={zero.num=00..00}] run tag @s add vex
execute as @e[type=silverfish,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=silverfish,tag=!checked] zero.rng 16


#Execute
execute as @e[type=silverfish,tag=swarmer] at @s run function zero:variants/arthropods/silverfish/swarmer
execute as @e[type=silverfish,tag=vex] at @s run function zero:variants/arthropods/silverfish/vex

