extends Node2D
var chosed_enemy


func chosed(current_enemy):
	chosed_enemy=current_enemy
	chosed_enemy=get_node(chosed_enemy)
	
	
func _on_Button_button_down():
	chosed_enemy=null
	
