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
	_update_current_hold_time(delta)
	_update_progress_bar_value()
	if current_hold_time >= hold_time:
		_reset_current_hold_time()


func _update_current_hold_time(delta: float) -> void:
	if not Input.is_action_pressed("hit"):
		_reset_current_hold_time()
		return
	current_hold_time += delta


func _reset_current_hold_time() -> void:
	current_hold_time = 0


func _update_progress_bar_value() -> void:
	progress_bar.value = current_hold_time / hold_time
 
