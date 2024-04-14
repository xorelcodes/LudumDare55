extends CharacterBody2D

var current_direction = 0
var vertical_pressed = false
var horizontal_pressed = false

const GRAVITY = 0.0
const WALK_SPEED = 200
const RAYCAST_LENGTH = 75

enum DIRECTION {UP, RIGHT, DOWN, LEFT}

@onready var raycast_interact = get_node("RayCast2D") as RayCast2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	velocity.y += delta * GRAVITY
	velocity.x += delta * GRAVITY
	
	if Input.is_action_pressed("move_up") and !horizontal_pressed:
		velocity.y = -WALK_SPEED
		raycast_interact.target_position.y = -RAYCAST_LENGTH
		raycast_interact.target_position.x = 0
		vertical_pressed = true
	elif Input.is_action_pressed("move_down") and !horizontal_pressed:
		velocity.y = WALK_SPEED
		raycast_interact.target_position.y = RAYCAST_LENGTH
		raycast_interact.target_position.x = 0
		vertical_pressed = true
	else:
		velocity.y = 0
		vertical_pressed = false

	if Input.is_action_pressed("move_left") and !vertical_pressed:
		velocity.x = -WALK_SPEED
		horizontal_pressed = true
		raycast_interact.target_position.x = -RAYCAST_LENGTH
		raycast_interact.target_position.y = 0
	elif Input.is_action_pressed("move_right") and !vertical_pressed:
		velocity.x =  WALK_SPEED
		horizontal_pressed = true
		raycast_interact.target_position.x = RAYCAST_LENGTH
		raycast_interact.target_position.y = 0
	else:
		velocity.x = 0
		horizontal_pressed = false

	# "move_and_slide" already takes delta time into account.
	move_and_slide()
