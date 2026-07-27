class_name GameOver
extends CanvasLayer

@onready var score: Label = %ScoreLabel
@onready var high_score: Label = %HighScoreLabel
@onready var restart: Button = %RestartButton
@onready var quit: Button = %QuitButton

func set_score(n : int):
	score.text = "Final Score: " + str(n)

func _on_restart_button_pressed() -> void:
	get_tree().reload_current_scene()

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _notification(what):
	match what:
		NOTIFICATION_ENTER_TREE:
			get_tree().paused = true
		NOTIFICATION_EXIT_TREE:
			get_tree().paused = false
