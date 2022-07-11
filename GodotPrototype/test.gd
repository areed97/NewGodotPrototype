extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_CheckBox_pressed():
#	$Sprite2.hide()


#func _on_CheckBox2_pressed():
#	$Sprite.hide()


func _on_CheckBox2_toggled(button_pressed):
	if (button_pressed):
		$Sprite.show()
		$Sprite2.move_local_y(50)
	else:
		$Sprite.hide()
		$Sprite2.move_local_y(-50)


func _on_CheckBox_toggled(button_pressed):
	if (button_pressed):
		$Sprite2.show()
		$Sprite.move_local_y(-50)
	else:
		$Sprite2.hide()
		$Sprite.move_local_y(50)
