#Zero_4793

#Spawn
execute as @e[type=creeper,tag=!checked,tag=!queen,name="queen"] run data merge entity @s {Tags:["queen","checked"]}
execute as @e[type=creeper,tag=!checked,tag=!baby,name="baby"] run data merge entity @s {Tags:["baby","checked"]}


#Randomise
execute as @e[type=creeper,tag=!checked] store result score @s random run random value 0..100
execute as @e[type=creeper,tag=!checked,scores={random=00..00}] run tag @s add speed
execute as @e[type=creeper,tag=!checked,scores={random=01..01}] run tag @s add slowness
execute as @e[type=creeper,tag=!checked,scores={random=02..02}] run tag @s add haste
execute as @e[type=creeper,tag=!checked,scores={random=03..03}] run tag @s add mining_fatigue
execute as @e[type=creeper,tag=!checked,scores={random=04..04}] run tag @s add strength
execute as @e[type=creeper,tag=!checked,scores={random=05..05}] run tag @s add instant_health
execute as @e[type=creeper,tag=!checked,scores={random=06..06}] run tag @s add instant_damage
execute as @e[type=creeper,tag=!checked,scores={random=07..07}] run tag @s add jump_boost
execute as @e[type=creeper,tag=!checked,scores={random=08..08}] run tag @s add nausea
execute as @e[type=creeper,tag=!checked,scores={random=09..09}] run tag @s add regeneration
execute as @e[type=creeper,tag=!checked,scores={random=10..10}] run tag @s add resistance
execute as @e[type=creeper,tag=!checked,scores={random=11..11}] run tag @s add fire_resistance
execute as @e[type=creeper,tag=!checked,scores={random=12..12}] run tag @s add water_breathing
execute as @e[type=creeper,tag=!checked,scores={random=13..13}] run tag @s add invisibility
execute as @e[type=creeper,tag=!checked,scores={random=14..14}] run tag @s add blindness
execute as @e[type=creeper,tag=!checked,scores={random=15..15}] run tag @s add night_vision
execute as @e[type=creeper,tag=!checked,scores={random=16..16}] run tag @s add hunger
execute as @e[type=creeper,tag=!checked,scores={random=17..17}] run tag @s add weakness
execute as @e[type=creeper,tag=!checked,scores={random=18..18}] run tag @s add poison
execute as @e[type=creeper,tag=!checked,scores={random=19..19}] run tag @s add wither
execute as @e[type=creeper,tag=!checked,scores={random=20..20}] run tag @s add health_boost
execute as @e[type=creeper,tag=!checked,scores={random=21..21}] run tag @s add absorption
execute as @e[type=creeper,tag=!checked,scores={random=22..22}] run tag @s add saturation
execute as @e[type=creeper,tag=!checked,scores={random=23..23}] run tag @s add glowing
execute as @e[type=creeper,tag=!checked,scores={random=24..24}] run tag @s add levitation
execute as @e[type=creeper,tag=!checked,scores={random=25..25}] run tag @s add luck
execute as @e[type=creeper,tag=!checked,scores={random=26..26}] run tag @s add unluck
execute as @e[type=creeper,tag=!checked,scores={random=27..27}] run tag @s add slow_falling
execute as @e[type=creeper,tag=!checked,scores={random=28..28}] run tag @s add conduit_power
execute as @e[type=creeper,tag=!checked,scores={random=29..29}] run tag @s add dolphins_grace
execute as @e[type=creeper,tag=!checked,scores={random=30..30}] run tag @s add bad_omen
execute as @e[type=creeper,tag=!checked,scores={random=31..31}] run tag @s add hero_of_the_village
execute as @e[type=creeper,tag=!checked,scores={random=32..32}] run tag @s add darkness
execute as @e[type=creeper,tag=!checked,scores={random=33..33}] run tag @s add infested
execute as @e[type=creeper,tag=!checked,scores={random=34..34}] run tag @s add oozing
execute as @e[type=creeper,tag=!checked,scores={random=35..35}] run tag @s add weaving
execute as @e[type=creeper,tag=!checked,scores={random=36..36}] run tag @s add wind_charged
execute as @e[type=creeper,tag=!checked,scores={random=37..37}] run tag @s add raid_omen
execute as @e[type=creeper,tag=!checked,scores={random=38..38}] run tag @s add trial_omen
execute as @e[type=creeper,tag=!checked,scores={random=00..38}] run tag @s add potion
execute as @e[type=creeper,tag=!checked,scores={random=39..40}] run tag @s add queen
execute as @e[type=creeper,tag=!checked,scores={random=41..50}] run tag @s add baby
tag @e[type=creeper] add checked


#Execute
execute as @e[type=creeper,tag=baby,tag=!set] run data merge entity @s {Fuse:20,ExplosionRadius:1,Health:5,attributes:[{id:max_health,base:5.0},{id:scale,base:0.5},{id:movement_speed,base:0.35}],Tags:[set]}
execute as @e[type=creeper,tag=queen] at @s run function hostile_variants:creeper/queen
execute if score zero.second server matches 0 if score zero.tick server matches 0 as @e[type=creeper,tag=potion] at @s run function hostile_variants:creeper/potion


# fire ignites
execute as @e[type=creeper] at @s unless data entity @s {Fire:0s} run data merge entity @s {ignited:1b}
# execute as @e[type=creeper] at @s if data entity @s {ignited:1b} run ... #ignited is only true from artificial ignition like flint/fire, not self/natural
