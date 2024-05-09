class_name BaseCharacter
extends Node2D

@export_group("Stats")
@export var health: int
@export var attack: int
@export var defense: int
@export var speed: int
	
func deal_damage(enemy: BaseCharacter) -> void:
	enemy.health -= attack
