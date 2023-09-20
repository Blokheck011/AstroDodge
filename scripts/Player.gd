extends CharacterBody3D

#how fast the player moves in m/s
@export var speed = 2

var target_velocity = Vector3.ZERO

func _physics_process(delta):
	#create a local variable to store the input direction
	var direction = Vector3.ZERO

	#check for each move input and update the direction
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.y -= 1
	if Input.is_action_pressed("move_up"):
		direction.y += 1
		
	#normalize the movement variable, so that you can't go faster when pressing forward + left/right (classic doom)
	if direction != Vector3.ZERO:
		direction = direction.normalized()

	target_velocity.x = direction.x * speed
	target_velocity.y = direction.y * speed
	
	velocity = target_velocity
	
	move_and_slide()
