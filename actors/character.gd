class_name Character
extends Node

enum AttrType {
	# defence paras
	MAX_HEALTH,
	DEFENCE,
	FLAT_DAMAGE_REDUCTION,
	# attack paras
	ATTACK,
	ATTACK_SPEED,
	CRIT_LEVEL,
	CRIT_DAMAGE_MULTIPLIER,
	MAX_CHARGING,
	CHARGING_SPEED
}

# character data
var basic_attributes: Dictionary[AttrType, GrowthNumber]
## special data
var talent: TalentBuff
var skills: Array[Skill] = []
var initial_buffs: Array[Buff] = []
# visual data
var visual: CharacterVisual

func _init() -> void:
	for attr in AttrType.values():
		basic_attributes[attr] = GrowthNumber.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visual = $CharacterVisual

