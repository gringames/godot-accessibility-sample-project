extends Node

signal score_changed(new_score: int)

const COIN_POINTS: int = 1
const ENEMY_POINTS: int = 5

var score: int = 0

func on_coin_collected() -> void:
	_add_to_score(COIN_POINTS)

func on_enemy_defeated() -> void:
	_add_to_score(ENEMY_POINTS)

func _add_to_score(points: int) -> void:
	score += points
	score_changed.emit(score)
	
