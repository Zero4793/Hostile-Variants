#Zero_4793

#Spawn
execute as @e[type=stray,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=stray,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=stray,tag=!checked,tag=!levi,name="levi"] run data merge entity @s {Tags:["levi","checked"]}
execute as @e[type=stray,tag=!checked,tag=!ice,name="ice"] run data merge entity @s {Tags:["ice","checked"]}
execute as @e[type=stray,tag=!checked,tag=!boss,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=stray,tag=!checked,scores={zero.num=00..00}] run tag @s add boss
execute as @e[type=stray,tag=!checked,scores={zero.num=01..04}] run tag @s add tank
execute as @e[type=stray,tag=!checked,scores={zero.num=05..12}] run tag @s add levi
execute as @e[type=stray,tag=!checked,scores={zero.num=13..20}] run tag @s add ice
execute as @e[type=stray,tag=!checked,scores={zero.num=21..32}] run tag @s add normal
execute as @e[type=stray,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=stray,tag=!checked] zero.rng 32


#Execute
execute as @e[type=stray,tag=tank] at @s run function zero:variants/skeletons/stray/tank
execute as @e[type=stray,tag=levi] at @s run function zero:variants/skeletons/stray/levi
execute as @e[type=stray,tag=ice] at @s run function zero:variants/skeletons/stray/ice
execute as @e[type=stray,tag=boss] at @s run function zero:variants/skeletons/stray/boss
