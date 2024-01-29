class_name Hitbox
extends Area2D
#Exporting a var allows you to change it in the Inspector window
@export var damage = 10
@export var knockback = 0
@export var angle = 0
@export var baseTimer = 0
var actualTimer = 0
var timerCountdown = true

#Check Hurtbox.gd for details
func _init() -> void:
	collision_layer = 2
	collision_mask = 0
	
func _process(_delta):
	if timerCountdown and actualTimer == baseTimer - 1:
		$CollisionShape2D.set_deferred("disabled", true)
	if timerCountdown and actualTimer == baseTimer:
		$CollisionShape2D.set_deferred("disabled", false)
		actualTimer = 0
	elif timerCountdown and actualTimer < baseTimer:
		actualTimer += 1
