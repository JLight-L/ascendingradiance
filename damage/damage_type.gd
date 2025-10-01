class_name DamageType
extends Resource

var name: String
var description: String = ""

func get_damage_value(_init_value: float, _source: BattleCharacter, _target: BattleCharacter) -> float:
    # 计算最终伤害值的逻辑，可以根据伤害类型、来源和目标进行调整
    return _init_value

## 除直接伤害之外造成的额外效果
func damage_effects(_source:BattleCharacter, _target:BattleCharacter, 
                    _base_value:float=0.0, _final_value:float=0.0) -> void:
    pass

func get_final_damage_value(base_value:float, _source:BattleCharacter, _target:BattleCharacter) -> float:
    return max(0.0, base_value - _target.basic_character.defense.value)