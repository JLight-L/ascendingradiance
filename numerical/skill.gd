class_name Skill
extends Resource

var name: String
var description: String
var min_charging: GrowthNumber
var max_charging: GrowthNumber
var use_time: GrowthNumber
var values_of_effect: Array[GrowthNumber]


func use():
	# 技能释放逻辑，效果和蓄力值相挂钩
	pass

func block():
	# 技能格挡逻辑
	pass