extends Node2D
class_name FinishLevelButton

@onready var progress_bar: ProgressBar = $ProgressBar
@onready var button_visual: Sprite2D = $Plankpin

@export var hold_time: float = 2
var current_hold_time: float = 0

func _ready() -> void:
	progress_bar.value = 0
	button_visual.position = Vector2.ZERO

func _process(delta: float) -> void:
	if Input.is_action_pressed("hit"):
		current_hold_time += delta
	else:
		current_hold_time = 0
		return
	if current_hold_time >= hold_time:
		print("held enough")
		current_hold_time = 0 #?
