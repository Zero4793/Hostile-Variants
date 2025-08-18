#Zero_4793

#Spawn
execute as @e[type=stray,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=stray,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=stray,tag=!checked,tag=!levi,name="levi"] run data merge entity @s {Tags:["levi","checked"]}
execute as @e[type=stray,tag=!checked,tag=!ice,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=stray,tag=!checked,tag=!boss,name="boss"] run data merge entity @s {Tags:["boss","checked"]}
execute as @e[type=stray,tag=!checked,tag=!baby,name="baby"] run data merge entity @s {Tags:["baby","checked"]}


#Randomise
execute as @e[type=stray,tag=!checked] store result score @s random run random value 0..32
execute as @e[type=stray,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=stray,tag=!checked,scores={random=01..04}] run tag @s add tank
execute as @e[type=stray,tag=!checked,scores={random=05..12}] run tag @s add levi
execute as @e[type=stray,tag=!checked,scores={random=13..20}] run tag @s add ice
execute as @e[type=stray,tag=!checked,scores={random=21..25}] run tag @s add baby
tag @e[type=stray] add checked


#Execute
execute as @e[type=stray,tag=tank] at @s run function hostile_variants:skeletons/stray/tank
execute as @e[type=stray,tag=levi] at @s run function hostile_variants:skeletons/stray/levi
execute as @e[type=stray,tag=ice] at @s run function hostile_variants:zombies/zombie/ice
execute as @e[type=stray,tag=boss] at @s run function hostile_variants:skeletons/skeleton/boss
execute as @e[type=stray,tag=baby] at @s run function hostile_variants:skeletons/skeleton/baby
