extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_CheckBox2_toggled(button_pressed):
	if(!self.get_node("CheckBox3").pressed):
		if (button_pressed):
			self.find_node("Sail").find_node("Firstsail").get_child(0).show()
			self.find_node("Base").get_child(0).move_local_y(40)
		else:
			self.find_node("Sail").find_node("Firstsail").get_child(0).hide()
			self.find_node("Base").get_child(0).move_local_y(-40)


func _on_CheckBox_toggled(button_pressed):
	if (button_pressed):
		self.find_node("Base").get_child(0).show()
		for sails in self.find_node("Sail").get_children():
			sails.get_child(0).move_local_y(-40)
			#self.find_node("Sail").get_child(0).move_local_y(-40)
	else:
		self.find_node("Base").get_child(0).hide()
		for sails in self.find_node("Sail").get_children():
			sails.get_child(0).move_local_y(40)
			#self.find_node("Sail").get_child(0).move_local_y(40)


func _on_CheckBox3_toggled(button_pressed):
	if(!self.get_node("CheckBox2").pressed):
		if (button_pressed):
			self.find_node("Sail").find_node("Othersail").get_child(0).show()
			self.find_node("Base").get_child(0).move_local_y(40)
		else:
			self.find_node("Sail").find_node("Othersail").get_child(0).hide()
			self.find_node("Base").get_child(0).move_local_y(-40)
