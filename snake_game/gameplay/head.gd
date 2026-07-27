class_name Head
extends SnakePart

signal food_eaten
signal collided_with_tail
signal bonus_eaten

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("food"):
		food_eaten.emit()
		area.call_deferred("queue_free")
	elif area.is_in_group("bonus"):
		bonus_eaten.emit()
		area.call_deferred("queue_free")
	else:
		collided_with_tail.emit()
