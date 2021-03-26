extends Button

func _button_pressed():
# Remove the current level
	var level = root.get_node("Level")
	root.remove_child(level)
	level.call_deferred("free")
