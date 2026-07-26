class_name GamePlay
extends Node2D

@onready var head: Head = %Head as Head
@onready var bounds: Bounds = %Bounds
@onready var spawner: Spawner = $Spawner as Spawner

var time_between_moves : float = 1000.0
var time_since_last_move : float = 0
var speed : float = 10000.0
var move_dir: Vector2 = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	head.food_eaten.connect(_on_food_eaten)
	spawner.spawn_food()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		move_dir = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		move_dir = Vector2.DOWN
	elif Input.is_action_pressed("ui_right"):
		move_dir = Vector2.RIGHT
	elif Input.is_action_pressed("ui_left"):
		move_dir = Vector2.LEFT

func _physics_process(delta: float) -> void:
	time_since_last_move += delta * speed
	if time_since_last_move >= time_between_moves:
		update_snake()
		time_since_last_move = 0

func update_snake():
	var new_pos : Vector2 = head.position + move_dir * Global.grid_size
	new_pos = bounds.wrap_vector(new_pos)
	head.move_to(new_pos)
	
func _on_food_eaten():
	spawner.call_deferred("spawn_food")
	
