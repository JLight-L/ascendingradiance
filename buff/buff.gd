class_name Buff
extends Resource

enum BuffTriggerType {
	ON_ATTACK,
	ON_HURT,
	ON_SKILL,
	ON_BLOCK,
	ON_DEATH,
	ON_ROUND_START,
	ON_ROUND_END
}

var name: String
var description: String = ""

var trigger_types: Array[BuffTriggerType] = []

var owner: Character = null
var source: Character = null


func affect(trigger_num: int):
	assert(trigger_num <= trigger_types.size())
	pass