extends KinematicBody2D
var attack=1
var blood=10
var defence=0

var choose_enemy=false
var target=Vector2()


func _ready():
	pass 
func _process(delta):
	target=get_global_mouse_position()
	choose()
	die()
	
func choose():
	if Input.is_action_just_pressed("click")&& self.position.distance_to(target)<64:
		choose_enemy=true
		get_parent().chosed(get_path())
		
func die():
	if blood<=0:
		choose_enemy=false
		queue_free()
		
func _on_Button_button_down():
	choose_enemy=false

