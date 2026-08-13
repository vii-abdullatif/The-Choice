extends Node2D


func _ready() -> void:
	Global.lives = 3

func _physics_process(_delta):
	$Life1.visible = Global.lives >= 1
	$Life2.visible = Global.lives >= 2
	$Life3.visible = Global.lives >= 3
