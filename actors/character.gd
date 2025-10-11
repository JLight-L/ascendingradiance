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
var basic_attributes: Dictionary[AttrType, GrowthNumber] = {
	AttrType.MAX_HEALTH: null,
	AttrType.DEFENCE: null,
	AttrType.FLAT_DAMAGE_REDUCTION: null,
	AttrType.ATTACK: null,
	AttrType.ATTACK_SPEED: null,
	AttrType.CRIT_LEVEL: null,
	AttrType.CRIT_DAMAGE_MULTIPLIER: null,
	AttrType.MAX_CHARGING: null,
	AttrType.CHARGING_SPEED: null
	}
## special data
var talent: TalentBuff
var skills: Array[Skill] = []
var initial_buffs: Array[Buff] = []
# visual data
var visual: CharacterVisual


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visual = $CharacterVisual

