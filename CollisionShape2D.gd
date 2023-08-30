extends CollisionShape2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_CollisionShape2D_entered(collision):
	if collision.get_name()=="Player":
		get_tree().change_scene("res://gameover.tscn")
