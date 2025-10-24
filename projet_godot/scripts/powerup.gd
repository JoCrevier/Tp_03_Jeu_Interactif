## Son et Disparition quand absorbé 
class_name powerup extends Area2D

@export var scorepoint = 0


func _on_body_entered(_body: Node2D) -> void:
	hide()
	$AudioStreamPlayer2D.play()
	$CollisionShape2D.set_deferred("disabled", true)
