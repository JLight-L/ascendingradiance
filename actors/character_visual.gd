class_name CharacterVisual
extends Area2D

# visual data
@export var radius: float = 16.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _draw() -> void:
	# Draw a simple representation of the character
	draw_circle(Vector2.ZERO, radius, Color(0, 1, 0))  # Red circle for the character