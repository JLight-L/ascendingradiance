class_name DamageHandler
extends Node

var damage_type_pool: Array[DamageType] = []    # 所有可能会需要处理的伤害类型列表，随节点初始化

'通过信号来处理各种伤害'