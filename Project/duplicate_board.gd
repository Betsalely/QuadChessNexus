extends Control

@onready var board_1_dupe = $"."
@onready var board_1 = $"../Board1"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	board_1_dupe = board_1.duplicate()
