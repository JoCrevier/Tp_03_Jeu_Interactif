extends Node

@export var score = 0
signal score_collectee
signal cle_collectee

var scene_actuelle_path: String

func debloquer_cle(groupe_cle):
	cle_collectee.emit(groupe_cle)

func augmenter_scores():
	score += 1
	score_collectee.emit(score)
	
func changer_scene(nouvelle_scene: PackedScene):
	if get_tree().current_scene:
		scene_actuelle_path = get_tree().current_scene.scene_file_path
	print("changer scene ->", nouvelle_scene)
	get_tree().call_deferred("change_scene_to_packed", nouvelle_scene)

func revenir_scene_precedente():
	if scene_actuelle_path != "":
		print("Retour à la scène précédente :", scene_actuelle_path)
		call_deferred("_deferred_revenir_scene_precedente")
	else:
		push_warning("Aucune scène précédente enregistrée !")

func _deferred_revenir_scene_precedente():
	get_tree().change_scene_to_file(scene_actuelle_path)
	
func recharger_scene_actuelle():
	var scene = get_tree().current_scene
	if scene and scene.scene_file_path != "":
		print("Rechargement de :", scene.scene_file_path)
		get_tree().call_deferred("change_scene_to_file", scene.scene_file_path)
	else:
		push_warning("Impossible de recharger la scène actuelle.")
