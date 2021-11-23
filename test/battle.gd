extends Node2D
var target=Vector2()
var a
var b
var c
func _ready():
	b=get_node("enemy")
	a=get_node("partner")

func _process(delta):
	#_attack()
	pass

func _attack():#攻击函数
	if a.action>0 :
		if a.choose3==true&&b.choose4==true: #&&Input.is_action_just_pressed("click"):
			if b.flag ==true :
				b.t.blood=b.t.blood-a.t.attack
				a.t.action=0
				print(b.t.blood)
	pass
func enemy_attack():
	pass
