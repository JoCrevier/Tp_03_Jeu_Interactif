extends Area2D

@export var groupe_cle: String

func _on_body_entered(body: Node2D) -> void:
	# Débloque la clé
	Main.debloquer_cle(self)
	
	# Désactive la collision
	$CollisionShape2D.disabled = true
	
	# Cache la clé visuellement
	$KeyBlue.visible = false
	
	# Joue le son et attends la fin
	if $CleSfx:
		$CleSfx.play()
		await $CleSfx.finished
	else:
		push_warning("AudioStreamPlayer 'CleSfx' introuvable !")
	queue_free()
