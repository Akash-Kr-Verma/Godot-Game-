extends Area2D

@export var target_level : PackedScene

func _on_body_entered(body):
	# Check if the body is the player by checking for the group
	if body.is_in_group("player"):  # Ensure the player is part of a group called "player"
		print("Player entered the zone!")  # Debugging line, optional
		get_tree().change_scene_to_packed(target_level)
