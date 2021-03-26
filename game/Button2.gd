extends Button

func _button_pressed():
	var scene_to_load = "res://character.tscn"
	get_tree().get_current_scene().free()
	var new_packed_scene = ResourceLoader.load(scene_to_load)
	var new_scene_instance = new_packed_scene.instance()
	get_tree().get_root().add_child(new_scene_instance)
	get_tree().set_current_scene(new_scene_instance)
