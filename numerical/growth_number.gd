class_name GrowthNumber
extends RefCounted
enum GrowthType {
    LINEAR,
    SQUART,
    INVERSE
}

var value: float

var growth_type: GrowthType
var base_value: float = 0.0:
	set(v):
		base_value = v
		value = _calc_value()
var growth_rate: float = 0.0:
	set(v):
		growth_rate = v
		value = _calc_value()
var level: int = 0:
	set(v):
		level = v
		value = _calc_value()

## 是否需要？
func _init(_growth_type: GrowthType = GrowthType.LINEAR, _base_value: float = 0.0, _growth_rate: float = 0.0, _level: int = 0) -> void:
	growth_type = _growth_type
	base_value = _base_value
	growth_rate = _growth_rate
	level = _level
	value = _calc_value()

func _calc_value() -> float:
	if growth_type == null or base_value == null or growth_rate == null or level == null:
		return 0.0  # 如果有任何参数未初始化，返回0.0作为默认值
	match growth_type:
		GrowthType.LINEAR:
			return base_value + growth_rate * level
		GrowthType.SQUART:
			return base_value + growth_rate * pow(level, 2)
		GrowthType.INVERSE:
			if 1 + growth_rate * level == 0:
				push_error("Division by zero in INVERSE growth calculation.")
				return base_value
			return base_value / (1 + growth_rate * level)
		_:
			push_error("Invalid growth type: %s" % str(growth_type))
			return base_value   # 给出一个保底值，避免崩溃
