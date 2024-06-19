extends Node2D


func _on_exit_button_pressed():
	get_tree().quit()


func _on_x_8_button_pressed():
	get_tree().change_scene_to_file('res://game8.tscn')


func _on_x_16_button_pressed():
	get_tree().change_scene_to_file('res://game16.tscn')


func _on_x_32_button_pressed():
	get_tree().change_scene_to_file('res://game_32.tscn')
