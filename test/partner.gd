extends Node2D
var child
var l
var t
var choose3
var action=0
func _ready():
	child=get_children()
func _process(delta):
	for l in child:
		if l.choose1==true:
			t=l
			action=t.action
			choose3=true
			get_parent()._attack()
			if t.blood<=0:
				remove_child(t)
				choose3=false
		if Input.is_action_just_pressed("right"):
			choose3=false
			t.choose1=false
	


func _on_Button_button_down():
	t=null
	pass # Replace with function body.
