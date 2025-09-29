class_name Character
extends Node

# character data
## defence paras
var max_health: GrowthNumber
var defence: GrowthNumber
var dodge_rate: GrowthNumber
## attack paras
var attack: GrowthNumber
var attack_speed: GrowthNumber
var hit_rate: GrowthNumber
var crit_rate: GrowthNumber
var crit_multiplier: GrowthNumber
var max_charging: GrowthNumber
var charging_speed: GrowthNumber
## special data
var talent: TalentBuff
var skills: Array[Skill] = []
var initial_buffs: Array[Buff] = []
# visual data
var visual: CharacterVisual


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visual = $CharacterVisual

