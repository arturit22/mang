extends Area2D
 
func _physics_process(_delta):
	var objs = get_overlapping_bodies()
	for obj in objs:
		if obj.name=="Player":
			get_tree().change_scene("res://gameover.tscn")
