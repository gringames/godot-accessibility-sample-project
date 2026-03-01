extends Node

@onready var label: Label = $Label

func _ready() -> void:
	ScoreManager.score_changed.connect(_update_label_text)
	_set_label_text("0")

func _update_label_text(score: int) -> void:
	_set_label_text(str(score))

func _set_label_text(content: String) -> void:
	label.text = content
