extends KinematicBody2D


var attack=1
var blood=10
var defence=0
var circle=Vector3(0,0,120)

var choose_ally=false
var target=Vector2()
var action=false
var only_one
var father

func _ready():
	print(position)
	pass 

func _process(delta):
	target=get_global_mouse_position()
	choose()
	check_circumstance()
	attack_scope()
func choose():
	father=get_parent()
	if Input.is_action_just_pressed("click")&& self.position.distance_to(target)<64:
		choose_ally=true
		get_parent().chosed(get_path())
		print(choose_ally)
	if Input.is_action_just_pressed("right"):
		choose_ally=false
	if father.chosed_ally!=null:
		only_one=get_path_to(father.chosed_ally)
		if only_one!=get_path_to(self):
			choose_ally=false


func check_circumstance():
	if blood==0:
		queue_free()

func _draw():
	if choose_ally==true:
		attack_scope()
		draw_arc(Vector2(0,0),circle.z,0,TAU,2048,Color.white,1,true)
	if choose_ally==false:
		update()


func attack_scope():
	circle.x=self.position.x
	circle.y=self.position.y
	var circle_position = Vector2(self.position.x,self.position.y)#获得大圆的位置
	update()


func _on_Button_button_down():
	action=true
	choose_ally=false
