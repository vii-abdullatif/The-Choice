extends CanvasLayer

const gameplay_scene: PackedScene = preload("res://snake_game/gameplay/game_play.tscn")

@onready var score: Label = %ScoreLabel
@onready var start: Button = %StartButton


func _ready() -> void:
	var high_score : int = Global.save_data.high_score
	score.text = "High Score: " + str(high_score)

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_packed(gameplay_scene)
