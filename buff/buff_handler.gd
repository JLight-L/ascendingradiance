class_name BuffHandler
extends Node



var buff_pool: Array[Buff] = []   # 所有可能会需要处理的buff列表，随节点初始化
var now_buffs: Array[Buff] = []   # 当前生效的buff列表，随时更改

func on_buff_trigger(trigger_type: Buff.BuffTriggerType, _params: Dictionary) -> void:
	match trigger_type:
		Buff.BuffTriggerType.ON_ATTACK:
			pass
		Buff.BuffTriggerType.ON_HURT:
			pass
		Buff.BuffTriggerType.ON_SKILL:
			pass
		Buff.BuffTriggerType.ON_BLOCK:
			pass
		Buff.BuffTriggerType.ON_DEATH:
			pass
		Buff.BuffTriggerType.ON_ROUND_START:
			pass
		Buff.BuffTriggerType.ON_ROUND_END:
			pass
		_:
			push_error("Invalid buff trigger type: %s" % str(trigger_type))

