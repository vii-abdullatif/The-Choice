extends Node2D


func _ready() -> void:
	Global.lives = 3

func _physics_process(delta):
	if Global.lives == 2:
		$Life3.hide()
	elif Global.lives == 1:
		$Life2.hide()
	elif Global.lives == 0:
		$Life1.hide()
