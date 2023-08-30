extends Area2D


func _physics_process(_delta):
	var objs = get_overlapping_bodies()
	for obj in objs:
		if obj.name=="KinematicBody2D":
			get_tree().change_scene("res://finish.tscn")
