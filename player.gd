extends KinematicBody2D
var coins = 0
var textureProgress : TextureProgress
const SPEED = 225
const ACCEL = 50
const UP = Vector2(0,-1) #määrab taeva suuna
const GRAV = 75
const JUMPHIGH = -1100
var hp = 100
var motion = Vector2()


func _ready():
	emit_signal("data_sent", data)
func _physics_process(delta):
	motion.y += GRAV
	run()
	jump()
	motion = move_and_slide(motion, UP) #nullib y-koordinaadi ja määrab gravitatsiooni suuna

#funktsioonid
func run():
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
		motion.x += ACCEL
		motion.x = min(SPEED, motion.x)
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
		motion.x += ACCEL
		motion.x = min(-SPEED, motion.x)
	else:
		motion.x = 0
		$AnimatedSprite.play("idle")
 
func jump():
#hüpata saab kui tegelaskuju puudub maad
	if is_on_floor(): 
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMPHIGH
	else:
		$AnimatedSprite.play("jump")
		
func GetCoin():
	coins += 1
	$Label.text = "Coins: " + str(coins)

