extends KinematicBody2D
var attack=1
var blood=10
var choose2=false
var target=Vector2()
var action=0
func _ready():
	pass 
func _process(delta):
	target=get_global_mouse_position()
	choose()
	die()
func choose():
	if Input.is_action_just_pressed("click")&& self.position.distance_to(target)<64:
		choose2=true
func die():
	if Input.is_action_just_pressed("click"):
		print(blood)
		print(choose2)
	if blood<=0:
		choose2=false
		queue_free()


func _on_Button_button_down():
	action=action+1
	choose2=false



func _on_enemy4_mouse_entered():
	choose2=true
	print(choose2)
	pass # Replace with function body.
