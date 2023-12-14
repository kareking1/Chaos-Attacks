class_name character_knockback
extends Node

@export var weight = 0

#Angle must be >= 0
func get_knockback(base_knockback, angle):
	var velocity_y = sin(angle) * base_knockback
	var velocity_x = cos(angle) * base_knockback
	
	return Vector2(velocity_x, velocity_y)
