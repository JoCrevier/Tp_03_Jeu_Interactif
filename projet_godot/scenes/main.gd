extends Node

@export var score = 0
signal score_collectee

signal cle_collectee

func debloquer_cle(groupe_cle):
	cle_collectee.emit(groupe_cle)

func augmenter_scores():
	score += 1
	score_collectee.emit(score)
	
func changer_scene(nouvelle_scene:PackedScene):
	print("changer scene")
	get_tree().call_deferred("change_scene_to_packed", nouvelle_scene)
