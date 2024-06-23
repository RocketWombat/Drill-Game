extends Area2D

@export var speed = 400 
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Every frame we need to do the following
	#	Update the players speed (only X axis)
	#	Update the players location
		
		
	#Update Players Speed
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	else:
		
