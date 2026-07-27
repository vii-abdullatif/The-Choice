class_name Spawner 
extends Node2D

signal tail_added(tail: Tail	)

@export var bounds: Bounds
var food_scene:PackedScene = preload("res://snake_game/gameplay/food.tscn")
var tail_scene: PackedScene = preload("res://snake_game/gameplay/tail.tscn")
var bonus_scene: PackedScene = preload("res://snake_game/gameplay/bonus.tscn")

func spawn_food():
	var spawn_point : Vector2 = Vector2.ZERO
	spawn_point.x = randf_range(bounds.x_min + Global.grid_size, bounds.x_max - Global.grid_size)
	spawn_point.y = randf_range(bounds.y_min + Global.grid_size, bounds.y_max - Global.grid_size)
	spawn_point.x = floorf(spawn_point.x / Global.grid_size) * Global.grid_size
	spawn_point.y = floorf(spawn_point.y / Global.grid_size) * Global.grid_size
	var food = food_scene.instantiate()
	food.position = spawn_point
	get_parent().add_child(food)

func spawn_bonus():
	var spawn_point : Vector2 = Vector2.ZERO
	spawn_point.x = randf_range(bounds.x_min + Global.grid_size, bounds.x_max - Global.grid_size)
	spawn_point.y = randf_range(bounds.y_min + Global.grid_size, bounds.y_max - Global.grid_size)
	spawn_point.x = floorf(spawn_point.x / Global.grid_size) * Global.grid_size
	spawn_point.y = floorf(spawn_point.y / Global.grid_size) * Global.grid_size
	var bonus = bonus_scene.instantiate()
	bonus.position = spawn_point
	get_parent().add_child(bonus)

func spawn_tail(pos: Vector2):
	var tail: Tail = tail_scene.instantiate() as Tail
	tail.position = pos
	get_parent().add_child(tail)
	tail_added.emit(tail)
