#Zero_4793

#Spawn
execute as @e[type=skeleton,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!fire,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!turret,name="turret"] run data merge entity @s {Tags:["turret","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!boss,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=skeleton,tag=!checked,scores={zero.num=00..00}] run tag @s add boss
execute as @e[type=skeleton,tag=!checked,scores={zero.num=01..04}] run tag @s add turret
execute as @e[type=skeleton,tag=!checked,scores={zero.num=05..20}] run tag @s add tank
execute as @e[type=skeleton,tag=!checked,scores={zero.num=21..36}] run tag @s add fire
execute as @e[type=skeleton,tag=!checked,scores={zero.num=37..52}] run tag @s add ice
execute as @e[type=skeleton,tag=!checked,scores={zero.num=53..96}] run tag @s add normal
execute as @e[type=skeleton,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=skeleton,tag=!checked] zero.rng 96


#Execute
execute as @e[type=skeleton,tag=fire] at @s run function zero:variants/skeletons/skeleton/fire
execute as @e[type=skeleton,tag=ice] at @s run function zero:variants/skeletons/skeleton/ice
execute as @e[type=skeleton,tag=tank] at @s run function zero:variants/skeletons/skeleton/tank
execute as @e[type=skeleton,tag=gunner] at @s run function zero:variants/skeletons/skeleton/gunner
execute as @e[type=skeleton,tag=turret] at @s run function zero:variants/skeletons/skeleton/turret
execute as @e[type=skeleton,tag=boss] at @s run function zero:variants/skeletons/skeleton/boss
