class_name Hitbox
extends Area2D
#Exporting a var allows you to change it in the Inspector window
@export var damage = 10
@export var knockback = 0
@export var angle = 0
#Check Hurtbox.gd for details
func _init() -> void:
	collision_layer = 2
	collision_mask = 0
