extends Node2D
var chosed_ally

			
func chosed(current_ally):
	chosed_ally=current_ally
	chosed_ally=get_node(chosed_ally)


func _on_Button_button_down():
	chosed_ally=null

