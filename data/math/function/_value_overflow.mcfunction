#math:_value_overflow
# 判断两个分数相乘是否会溢出
# 输入macro $(a):"value"
# 输入macro $(b):"value"
# 输出<ssstemp_res,int>

scoreboard players set ssstemp_res int 0

$scoreboard players set ssstemp_a int $(a)
$scoreboard players set ssstemp_b int $(b)

execute if score ssstemp_a int > ssstemp_b int run scoreboard players operation ssstemp_a int >< ssstemp_b int
execute if score ssstemp_a int matches -2147483648 if score ssstemp_b int matches 0..1 run return fail
execute if score ssstemp_a int matches -2147483648 unless score ssstemp_b int matches 0..1 run return run function math:warn_overflow

scoreboard players operation ssstemp_d int = ssstemp_b int
execute if score ssstemp_d int matches ..-1 run scoreboard players operation ssstemp_d int *= -1 int

scoreboard players set ssstemp_e int -2147483647
scoreboard players operation ssstemp_e int /= ssstemp_a int
scoreboard players set ssstemp_f int 2147483647
scoreboard players operation ssstemp_f int /= ssstemp_b int
scoreboard players set ssstemp_g int -2147483648
scoreboard players operation ssstemp_g int /= ssstemp_a int
scoreboard players set ssstemp_h int -2147483648
scoreboard players set ssstemp_c int -2147483648
scoreboard players operation ssstemp_h int /= ssstemp_b int
scoreboard players operation ssstemp_c int %= ssstemp_b int
execute unless score ssstemp_c int matches 0 run scoreboard players add ssstemp_h int 1

execute if score ssstemp_a int matches ..-46341 if score ssstemp_b int matches 1.. if score ssstemp_b int > ssstemp_e int run return run function math:warn_overflow
execute if score ssstemp_a int matches ..-46341 if score ssstemp_b int matches ..-1 if score ssstemp_d int > ssstemp_g int run return run function math:warn_overflow
execute if score ssstemp_b int matches 46341.. if score ssstemp_a int matches 1.. if score ssstemp_a int > ssstemp_f int run return run function math:warn_overflow
execute if score ssstemp_b int matches 46341.. if score ssstemp_a int matches ..-1 if score ssstemp_a int < ssstemp_h int run return run function math:warn_overflow