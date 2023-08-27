#Zero_4793

execute if score zero.datapackLoad server matches 1 run scoreboard players add zero.datapackCount server 1
execute if score zero.datapackLoad server matches 1 run tellraw @a [{"color":"aqua","text":"  "},{"text":"Mob Variants ","hoverEvent":{"action":"show_text","contents":{"text":"Variants/types of the hostile mobs. To make combat more engaging.","color":"blue"}},"color":"aqua","bold":"true"},{"text":"v"},{"score":{"name":"zero.variants-a","objective":"version"}},{"text":"."},{"score":{"name":"zero.variants-b","objective":"version"}},{"color":"light_purple","text":" by Zero_4793","hoverEvent":{"action":"show_text","contents":{"text":"Open PlanetMinecraft page for Zero_4793","color":"green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/zero_4793/"}}]

function zero:variants/zombies/core
function zero:variants/skeletons/core
function zero:variants/phantom/core
function zero:variants/arthropods/core
function zero:variants/slime/core
function zero:variants/enderman/core

#iron_golem
execute as @e[type=endermite,tag=!checked,tag=!golem,name="golem"] at @s run summon iron_golem
execute as @e[type=endermite,tag=!checked,tag=!golem,name="golem"] at @s run kill @s


#pick up loot mobs
execute as @e[type=zombie] run data merge entity @s {CanPickUpLoot:1b}
execute as @e[type=husk] run data merge entity @s {CanPickUpLoot:1b}
execute as @e[type=drowned] run data merge entity @s {CanPickUpLoot:1b}
execute as @e[type=skeleton] run data merge entity @s {CanPickUpLoot:1b}
execute as @e[type=stray] run data merge entity @s {CanPickUpLoot:1b}
execute as @e[type=wither_skeleton] run data merge entity @s {CanPickUpLoot:1b}


#nerf slimes/magma_cubes
#bones on stone set cobble eggs