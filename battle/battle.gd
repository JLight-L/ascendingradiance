extends Node2D

var character1: BattleCharacter
var character2: BattleCharacter

enum Step {
	READY,
	COMBAT1,
	COMBAT2,
	END
}

var step_data:Dictionary = {
	Step.READY: {
		"duration": 6,
		"buffs": []
	},
	Step.COMBAT1: {
		"duration": 12,
		"buffs": []
	},
	Step.COMBAT2: {
		"duration": 12,
		"buffs": []
	},
	Step.END: {
		"duration": 6,
		"buffs": []
	}
} 

var current_step: Step = Step.READY
var step_timer: int = 0

static func character_enter_battle(character: Character) -> BattleCharacter:
	var battle_character = BattleCharacter.new()
	battle_character.basic_character = character
	battle_character.enter_battle() #? 这句是否需要放在set方法中？
	return battle_character

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

'每阶段有对应的持续时间（int）、buff（Buff类，还没写暂时不用管，单个角色身上的buff是无序的）'

'每阶段持续时间每过一秒计算一次，包括：
	角色的蓄力、buff处理（调用buffhandler类（或单例），还没写好）、技能释放（及判断）、提前释放技能以格挡伤害的判断、伤害计算'

func next_step() -> void:
	"""战斗阶段切换，包括：切换阶段buff（还没设计好）等"""
	pass

'回合前准备：双方角色设置战斗计划、战斗初始化'