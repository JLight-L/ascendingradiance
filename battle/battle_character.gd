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

# 数值提升
var adders: Dictionary[Character.AttrType,float] = {
	Character.AttrType.MAX_HEALTH: 0.0,
	Character.AttrType.DEFENCE: 0.0,
	Character.AttrType.ATTACK: 0.0,
	Character.AttrType.ATTACK_SPEED: 0.0,
	Character.AttrType.CRIT_LEVEL: 0.0,
	Character.AttrType.MAX_CHARGING: 0.0,
	Character.AttrType.CHARGING_SPEED: 0.0
}
var multipliers: Dictionary[Character.AttrType,float] = {
	Character.AttrType.MAX_HEALTH: 1.0,
	Character.AttrType.DEFENCE: 1.0,
	Character.AttrType.ATTACK: 1.0,
	Character.AttrType.ATTACK_SPEED: 1.0,
	Character.AttrType.CRIT_LEVEL: 1.0,
	Character.AttrType.MAX_CHARGING: 1.0,
	Character.AttrType.CHARGING_SPEED: 1.0
}

var max_health                 = 10.0
var damage_mitigation          = 1.0
var flat_damage_reduction      = 0.0
var attack                     = 0.0
var attack_speed               = 1.0
var crit_rate                  = 0.0
var crit_damage_multiplier     = 1.0
var max_charging               = 10.0
var charging_speed             = 1.0

func get_attr_value(attr: Character.AttrType) -> float:
	var attr_value = (basic_attributes[attr].value + adders[attr]) * multipliers[attr]
	return attr_value

func calc_all_attrs() -> void:
	max_health                     = get_attr_value(AttrType.MAX_HEALTH)
	var defence                    = get_attr_value(AttrType.DEFENCE)
	var raw_flat_damage_reduction  = get_attr_value(AttrType.FLAT_DAMAGE_REDUCTION)
	attack                         = get_attr_value(AttrType.ATTACK)
	attack_speed                   = get_attr_value(AttrType.ATTACK_SPEED)
	var crit_level                 = get_attr_value(AttrType.CRIT_LEVEL)
	var raw_crit_multiplier        = get_attr_value(AttrType.CRIT_DAMAGE_MULTIPLIER)
	max_charging                   = get_attr_value(AttrType.MAX_CHARGING)
	charging_speed                 = get_attr_value(AttrType.CHARGING_SPEED)

	var dmg_mtgt_const = 100.0
	damage_mitigation = dmg_mtgt_const / (defence + dmg_mtgt_const)
	var flt_dmg_rdct_const = 1.0
	flat_damage_reduction = raw_flat_damage_reduction + defence * flt_dmg_rdct_const

	var crt_rt_const = 100.0
	crit_rate = crit_level / (crit_level + crt_rt_const)
	var crt_dmg_mltp_const = 0.1
	crit_damage_multiplier = raw_crit_multiplier + crit_level * crt_dmg_mltp_const



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
	# dmg是否为处理后的伤害？
	self.health = health - dmg
