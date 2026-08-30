#math:warn_overflow
# math:_test_overflow调用
# math:_value_overflow调用

scoreboard players set ssstemp_res int 1
tellraw @a ["",{"text":"[math3]: ","bold":true,"color":gray},{"text":"scoreboard overflow detected.","color":"red"}]