extends RigidBody2D

func _process(delta):
		var mob_types = $AnimatedSprite2D.sprite_frames
		$AnimatedSprite2D.play()
		$AnimatedSprite2D.position.y += 5 






func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free() # Replace with function body.
