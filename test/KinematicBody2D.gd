extends KinematicBody2D

var choose2=false
var target=Vector2()
var attack=1
var blood=10

func _ready():
	target=get_global_mouse_position()
	pass 
func choose():
	if Input.is_action_just_pressed("click")&& position.distance_to(target)<64:
		choose2=true
		print(choose2)
