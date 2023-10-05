extends Node2D


@onready var effect_sprite: Sprite2D = $EffectSprite


func _process(_delta: float) -> void:
	var viewport_size: Vector2 = get_viewport_rect().size
	var screen_coord: Vector2 = effect_sprite.get_global_transform_with_canvas() * \
		effect_sprite.position
	var screen_uv = screen_coord / viewport_size
	effect_sprite.material.set_shader_parameter("center", screen_uv)
