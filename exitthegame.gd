extends Control



func _ready():
	pass

func _on_data_sent(data):
	print("Received data from Scene1:", data)

func _on_Button_pressed():
	get_tree().quit()



func _on_restart_pressed():
	get_tree().change_scene("res://menu.tscn")


