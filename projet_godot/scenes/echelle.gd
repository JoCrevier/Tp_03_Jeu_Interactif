# Dans un noued Porte basé sur un Area2D
extends Area2D

@export var nouvelle_scene:PackedScene

func _on_body_entered(body: Node2D) -> void:
	if body is joueur:
		print("Porte activée, scène :", nouvelle_scene)
		Main.changer_scene(nouvelle_scene)
