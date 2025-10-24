extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is joueur:
		call_deferred("_reload_level")

func _reload_level() -> void:
	var tree = Engine.get_main_loop()
	if tree and tree.has_method("reload_current_scene"):
		tree.reload_current_scene()
