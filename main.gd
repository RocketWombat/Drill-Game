extends Node2D
@export var mob_scene: PackedScene
var speed = 100
var speed_increase_amount = 10



func _on_mob_spawn_timer_timeout():
	for i in range(2):
		var mob = mob_scene.instantiate()
		mob.position = Vector2(randi_range(0, 480),0)  
		mob.set("speed",speed)
		add_child(mob)
	
func _on_mob_increase_spee_timer_timeout():
	speed += speed_increase_amount # 

func Game_over():
		$Hub.game_over()
		$Mob_Spawn_timer.stop()
		$Mob_Increase_spee_timer.stop()
		for mob in get_tree().get_nodes_in_group("mobs"):
			mob.queue_free()
	 
func New_game():
		$Player.start($StartPosition.position)
		$Mob_Spawn_timer.start()
		$Mob_Increase_spee_timer.start()
