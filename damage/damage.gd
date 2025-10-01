class_name Damage
extends RefCounted

var base_value: float = 0
var damage_type: DamageType
var source: BattleCharacter
var target: BattleCharacter

func _init(sour:BattleCharacter, targ:BattleCharacter, value:float=0.0, type:DamageType=Hit.new()) -> void:
    damage_type = type
    base_value = type.get_damage_value(value, sour, targ)
    source = sour
    target = targ

func damage_apply() -> void:
    var final_value = damage_type.get_final_damage_value(base_value, source, target)
    target.health_decrease(final_value)
    damage_type.damage_effects(source, target, base_value, final_value)
