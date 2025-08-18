#Zero_4793

#Spawn
execute as @e[type=zombie_villager,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!hard,name="hard"] run data merge entity @s {Tags:["hard","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!fast,name="fast"] run data merge entity @s {Tags:["fast","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!ice,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!grappler,name="grappler"] run data merge entity @s {Tags:["grappler","checked"]}
execute as @e[type=zombie_villager,tag=!checked,tag=!boss,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=minecraft:zombie_villager,tag=!checked] store result score @s random run random value 0..200
execute as @e[type=zombie_villager,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=zombie_villager,tag=!checked,scores={random=01..10}] run tag @s add fire
execute as @e[type=zombie_villager,tag=!checked,scores={random=11..30}] run tag @s add ice
execute as @e[type=zombie_villager,tag=!checked,scores={random=31..60}] run tag @s add hard
execute as @e[type=zombie_villager,tag=!checked,scores={random=61..90}] run tag @s add grappler
execute as @e[type=zombie_villager,tag=!checked,scores={random=91..150}] run tag @s add horde
tag @e[type=zombie_villager] add checked


# #Execute
execute as @e[type=zombie_villager,tag=boss] at @s run function hostile_variants:zombies/zombie/boss
execute as @e[type=zombie_villager,tag=hard] at @s run function hostile_variants:zombies/zombie/hard
execute as @e[type=zombie_villager,tag=ice] at @s run function hostile_variants:zombies/zombie/ice
execute as @e[type=zombie_villager,tag=fire] at @s run function hostile_variants:zombies/zombie/fire
execute as @e[type=zombie_villager,tag=grappler] at @s run function hostile_variants:zombies/zombie_villager/grappler
execute as @e[type=zombie_villager,tag=horde] at @s run function hostile_variants:zombies/zombie_villager/horde
