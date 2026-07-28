class_name Bounds
extends Node2D

const TILE_SIZE := 32

@onready var upper_left: Marker2D = %UpperLeft
@onready var lower_right: Marker2D = %LowerRight

var x_max : float
var x_min : float
var y_max : float
var y_min : float



func _ready() -> void:
	_fit_to_viewport()
	x_max = lower_right.position.x
	x_min = upper_left.position.x
	y_max = lower_right.position.y
	y_min = upper_left.position.y

func _fit_to_viewport() -> void:
	var viewport_size = get_viewport_rect().size
	var cols = int(ceil(viewport_size.x / TILE_SIZE))
	var rows = int(ceil(viewport_size.y / TILE_SIZE))

	upper_left.position = Vector2.ZERO
	lower_right.position = Vector2(cols * TILE_SIZE, rows * TILE_SIZE)

func wrap_vector(v : Vector2) -> Vector2:
	if v.x > x_max:
		return Vector2(x_min, v.y)
	elif v.x < x_min:
		return Vector2(x_max, v.y)
	elif v.y > y_max:
		return Vector2(v.x, y_min)
	elif v.y < y_min:
		return Vector2(v.x, y_max)
	return v

func _process(delta: float) -> void:
	pass
