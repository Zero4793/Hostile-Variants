#Zero_4793

#Spawn
execute as @e[type=skeleton,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!fire,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!turret,name="turret"] run data merge entity @s {Tags:["turret","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!boss,name="boss"] run data merge entity @s {Tags:["boss","checked"]}
execute as @e[type=skeleton,tag=!checked,tag=!baby,name="baby"] run data merge entity @s {Tags:["baby","checked"]}


#Randomise
execute as @e[type=skeleton,tag=!checked] store result score @s random run random value 0..100
execute as @e[type=skeleton,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=skeleton,tag=!checked,scores={random=01..04}] run tag @s add turret
execute as @e[type=skeleton,tag=!checked,scores={random=05..20}] run tag @s add tank
execute as @e[type=skeleton,tag=!checked,scores={random=21..36}] run tag @s add fire
execute as @e[type=skeleton,tag=!checked,scores={random=37..52}] run tag @s add ice
execute as @e[type=skeleton,tag=!checked,scores={random=53..60}] run tag @s add baby
tag @e[type=skeleton] add checked


#Execute
execute as @e[type=skeleton,tag=fire] at @s run function hostile_variants:skeletons/skeleton/fire
execute as @e[type=skeleton,tag=ice] at @s run function hostile_variants:zombies/zombie/ice
execute as @e[type=skeleton,tag=tank] at @s run function hostile_variants:skeletons/skeleton/tank
execute as @e[type=skeleton,tag=gunner] at @s run function hostile_variants:skeletons/skeleton/gunner
execute as @e[type=skeleton,tag=turret] at @s run function hostile_variants:skeletons/skeleton/turret
execute as @e[type=skeleton,tag=boss] at @s run function hostile_variants:skeletons/skeleton/boss
execute as @e[type=skeleton,tag=baby] at @s run function hostile_variants:skeletons/skeleton/baby

