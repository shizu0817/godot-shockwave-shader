extends Node2D


@export var shockwave_scene: PackedScene
@export var max_spawn_interval = 3.0

func _ready() -> void:
	get_tree().create_timer(random_time()).timeout.connect(_spawn, CONNECT_ONE_SHOT)
	
	
func random_time() -> float:
	return randf_range(0, max_spawn_interval)
	
	
func _spawn():
	var pos = Vector2(randf_range(0, 512), randf_range(0, 512))
	var wave = shockwave_scene.instantiate()
	
	wave.global_position = pos
	add_child(wave)
	
	
	get_tree().create_timer(random_time()).timeout.connect(_spawn, CONNECT_ONE_SHOT)
