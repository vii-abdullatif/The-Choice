extends Node

const grid_size : int = 32

var save_data:SaveData
var lives = 3

func _ready():
	save_data = SaveData.load_or_create()
	 
