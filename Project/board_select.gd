extends CanvasLayer

@onready var scene_manager = get_parent()
@onready var board_1 = $"../Board1"
@onready var board_2 = $"../Board2"
@onready var board_3 = $"../Board3"
@onready var board_4 = $"../Board4"


var affect = board_1
var piece = 0

func _on_button_next_pressed():
	legal_move(affect)
	
	#Moveable_Areas()
	scene_manager.next_level()


func _on_button_back_pressed():
	legal_move(affect)
	visible = false


func _on_board_1_button_pressed():
	affect = board_1


func _on_board_2_button_pressed():
	affect = board_2


func _on_board_3_button_pressed():
	affect = board_3


func _on_board_4_button_pressed():
	affect = board_4


func legal_move(board):
	print(board)

func move_piece(moved_piece):
	print('piece: '+str(moved_piece))
	piece = moved_piece
	
	
	
	
	

