extends Area2D


func _on_Area2D_body_entered(body):
	if body.name == "Coin":
		var apple_counter = get_node("/root/applecounter")
		apple_counter.increment_counter()
