extends Node2D


@onready var board_1 = $Board1
@onready var board_2 = $Board2
@onready var board_3 = $Board3
@onready var board_4 = $Board4
@onready var board_select = $BoardSelect
@onready var board_board_1 = board_select.get_child(1)
@onready var board_board_2 = board_select.get_child(2)
@onready var board_board_3 = board_select.get_child(3)
@onready var board_board_4 = board_select.get_child(4)
var start_level = 1

func _ready():
	board_1.visible = true
	board_2.visible = false
	board_3.visible = false
	board_4.visible = false



func BoardSelect(num):
	board_select.visible = true
	
	if num == 1:
		board_select.get_child(1).visible = false
		board_select.get_child(2).visible = true
	else:
		board_select.get_child(1).visible = true
		board_select.get_child(2).visible = false



func next_level():
	start_level += 1
	if start_level == 2:
		print("Switch scene 2 triggered")
		for i in get_children():
			if i == get_child(4):  
				continue
			i.visible = false

		# Assuming you meant to set Board2 to be visible
		$Board2.visible = true
	
	elif start_level == 3:
		print("Switch scene 3 triggered")
		for i in get_children():
			if i == get_child(4):  
				continue
			i.visible = false

		# Assuming you meant to set Board2 to be visible
		$Board3.visible = true
	
	elif start_level == 4:
		print("Switch scene 4 triggered")

		for i in get_children():
			if i == get_child(4):  
				continue
			i.visible = false

		# Assuming you meant to set Board2 to be visible
		$Board4.visible = true
		
	elif start_level == 5:
		start_level = 1
		print("Switch scene 1 triggered")
		for i in get_children():
			if i == get_child(4):  
				continue
			i.visible = false

		# Assuming you meant to set Board2 to be visible
		$Board1.visible = true
