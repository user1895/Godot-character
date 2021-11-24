extends KinematicBody2D


var attack=1
var blood=10
var defence=0


var choose_ally=false
var target=Vector2()
var action=false

func _ready():
	print(position)
	pass 

func _process(delta):
	target=get_global_mouse_position()
	choose()
	check_circumstance()
func choose():
	if Input.is_action_just_pressed("click")&& self.position.distance_to(target)<128:
		 choose_ally=true
		 get_parent().chosed(get_path())
		 print( choose_ally)
		
func check_circumstance():
	if Input.is_action_just_pressed("click"):
		print(blood)
	if blood==0:
		queue_free()


func _on_Button_button_down():
	action=true
	choose_ally=false
