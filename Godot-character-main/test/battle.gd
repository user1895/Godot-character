extends Node2D

var allies
var enemies

func _ready():
	allies=get_node("partner")
	enemies=get_node("enemy")

func _process(delta):
	_attack()
	pass

func _attack():#攻击函数
	if get_parent().turn>0:
		if allies.chosed_ally!=null and enemies.chosed_enemy!=null and Input.is_action_just_pressed("click") and allies.chosed_ally.action and allies.chosed_ally.position.distance_to(enemies.chosed_enemy.position)<=allies.chosed_ally.circle.z:
			enemies.chosed_enemy.blood=enemies.chosed_enemy.blood-allies.chosed_ally.attack
			allies.chosed_ally.action=0
			allies.chosed_ally.action=false
			print(enemies.chosed_enemy.blood)
		if allies.chosed_ally!=null and enemies.chosed_enemy!=null and allies.chosed_ally.position.distance_to(enemies.chosed_enemy.position)>=allies.chosed_ally.circle.z and Input.is_action_just_pressed("click"):
			print("can")
