extends CanvasLayer

@onready var score_label = $ScoreLabel
@onready var scores_sfx = $ScoresSFX

func _ready() -> void:
	score_label.text = str(Main.score)
	Main.score_collectee.connect(retroaction_score)	

func retroaction_score(valeur_score):
	score_label.text = str(valeur_score)
	scores_sfx.play()
