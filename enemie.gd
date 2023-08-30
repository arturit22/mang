extends KinematicBody2D

const GRAV = 100
const UP = Vector2(0, -1)
var motion = Vector2()
var speed = -100
var direction = 1

func _ready():
	$AnimatedSprite.play("default")
	$AnimatedSprite.flip_h = false

func _physics_process(_delta):
	motion.y += GRAV

	if is_on_wall():
		direction *= -1
		$AnimatedSprite.flip_h = direction < 0

	motion.x = speed * direction
	motion = move_and_slide(motion, UP)


func _on_Area2D_body_entered(body):
	if body.get_name()=="player":
		queue_free()
