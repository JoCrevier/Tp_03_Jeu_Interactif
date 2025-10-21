## Montre un message quand le joueur est proche.
class_name PanneauMessage extends Area2D

@export var message := "Un message défaut."
@export var message2 := "un second message"


func _ready() -> void:
	$Message.hide()


func show_message(_body):
	$Timer.start()
	$Message.show()
	$Message/Fond/Etiquette.text = message
	await get_tree().create_timer(1).timeout
	$Message/Fond/Etiquette.text = message2
	await $Timer.timeout
	$Message.hide()


func hide_message(_body) -> void:
	$Timer.stop()
	$Message.hide()
