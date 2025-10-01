class_name BattleCharacter
extends Character

var basic_character: Character
var is_alive: bool = true
var health: float:
	set(value):
		if value <= 0:
			health = 0
			is_alive = false
		else:
			health = value
var charging: float
var buffs: Array = []
var battle_plan: Array = [null, null, null]
# 战斗计划：[(技能1,预期蓄力值,最低格挡蓄力值)], (技能2,蓄力比例,最低格挡蓄力值),...]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func enter_battle() -> void:
	health = max_health.value
	charging = 0.0

'释放技能判定（根据战斗计划释放）'

'被攻击 以及格挡判断'

## 计算直接的扣血和效果的触发
func health_decrease(dmg: float) -> void:
	self.health = health - dmg
