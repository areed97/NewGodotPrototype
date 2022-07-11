extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_CheckBox2_toggled(button_pressed):
	if (button_pressed):
		self.find_node("Sail").get_child(0).show()
		self.find_node("Base").get_child(0).move_local_y(40)
	else:
		self.find_node("Sail").get_child(0).hide()
		self.find_node("Base").get_child(0).move_local_y(-40)


func _on_CheckBox_toggled(button_pressed):
	if (button_pressed):
		self.find_node("Base").get_child(0).show()
		self.find_node("Sail").get_child(0).move_local_y(-40)
	else:
		self.find_node("Base").get_child(0).hide()
		self.find_node("Sail").get_child(0).move_local_y(40)
