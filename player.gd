extends Area2D
signal hit

@export var speed = 400 
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Every frame we need to do the following
		
	#Update Players Speed
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("left") && Input.is_action_pressed("right"):
		velocity.x = 0
	elif Input.is_action_pressed("left"):
		velocity.x -= 1
	elif Input.is_action_pressed("right"):
		velocity.x += 1
	else:
		velocity.x = 0
		
	velocity = velocity * speed
	
	#Update player position
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)

func start(pos):
	position = pos
	show()
	$CollisionPolygon2D.disabled = false

func _on_body_entered(body):
	hide()
	hit.emit()
	$CollisionPolygon2D.set_deferred("disabled",true)
