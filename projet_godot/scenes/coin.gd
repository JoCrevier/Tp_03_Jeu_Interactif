class_name coin extends Area2D

@export var scorepoint = 0

func _ready() -> void:
	body_entered.connect(score_touchee)

func _on_body_entered(_body: Node2D) -> void:
	hide()
	$AudioStreamPlayer2D.play()
	$CollisionShape2D.set_deferred("disabled", true)
	
func score_touchee(body):
	if body is joueur:
		Main.augmenter_scores()
		call_deferred("queue_free")
