extends Sprite

var mouse_in = false
var dragging = false

func _process(delta):
	if mouse_in && Input.is_action_pressed("left_click"):
		dragging = true
		
	if dragging && Input.is_action_pressed("left_click"):
		position = get_viewport().get_mouse_position()
		
	else:
		dragging = false


func _on_Area2D_mouse_entered():
	mouse_in = true


func _on_Area2D_mouse_exited():
	mouse_in = false
