extends Node2D
var child
var l
var t
var m
var attack=1
var blood=10
var choose4=false
var flag = false
func _ready():
	child=get_children()
func _process(delta):
	_choose()
	pass
func _choose():
	for l in child:
		if l.choose2==true:
			t=l
			flag = true
			choose4=true
			if t.blood<=0:
				for m in child:
					m.choose2=false
			if t.blood<=0:
				remove_child(t)
				choose4=false
		if Input.is_action_just_pressed("right"):
			choose4=false
			t.choose2=false


func _on_Button_button_down():
	t=null
	flag = false
