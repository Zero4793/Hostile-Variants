execute as @s[tag=!set,tag=!rotten] run summon zombie_villager ~ ~ ~ {CanPickUpLoot:true}
tag @s add set

execute unless data entity @s[nbt={IsBaby:0b}] Passengers[0] run ride @e[type=#zero:zombies,type=!zombie_horse,tag=!unriding,nbt={IsBaby:1b},sort=nearest,limit=1,distance=..2] mount @s
