extends KinematicBody2D
var attack=1
var blood=10

var choose1=false
var target=Vector2()
var action=0

func _ready():
	print(position)
	pass 

func _process(delta):
	target=get_global_mouse_position()
	choose()
	die()
func choose():
	if Input.is_action_just_pressed("click")&& self.position.distance_to(target)<128:
		choose1=true
		print(choose1)
func die():
	if Input.is_action_just_pressed("click"):
		print(blood)
	if blood==0:
		queue_free()


func _on_Button_button_down():
	action=action+1
	choose1=false
