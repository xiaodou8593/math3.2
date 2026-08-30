#math:_arcsin_res
# 计算反正弦
# 输入<sin,int,1w>
# 输出<res,int,1w>, [-900000, 900000]
# 需要以世界实体为执行者

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sqrt int = sin int
scoreboard players operation sqrt int *= sqrt int
scoreboard players operation sqrt int *= -1 int
scoreboard players add sqrt int 100000000
function math:sqrt/_self
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation cos int = sqrt int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run rotate @s ~ 0.0
execute store result score res int run data get entity @s Rotation[0] -10000
scoreboard players operation res int %= 3600000 int
execute if score res int matches 1800001.. run scoreboard players remove res int 3600000