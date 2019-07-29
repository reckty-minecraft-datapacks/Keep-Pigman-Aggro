# Enable trigger objectives
scoreboard players add @a Keep_Aggro 0
scoreboard players enable @a Keep_Aggro

# Disable aggro if already disabled
execute as @e[type=minecraft:player,scores={Keep_Aggro=0}] run function kpa:pigman-anger/disable

# Check if enabled
execute as @e[type=minecraft:player,scores={Keep_Aggro=1}] run function kpa:show-message/enabled
execute as @e[type=minecraft:player,scores={Keep_Aggro=1}] run scoreboard players set @s Keep_Aggro 2
execute as @e[type=minecraft:player,scores={Keep_Aggro=2}] run function kpa:pigman-anger/enable

# Check if disabled
execute as @e[type=minecraft:player,scores={Keep_Aggro=3..}] run function kpa:show-message/disabled
execute as @e[type=minecraft:player,scores={Keep_Aggro=3..}] run scoreboard players set @s Keep_Aggro 0
