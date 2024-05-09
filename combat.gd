extends Node2D

@export var CharacterLeft: BaseCharacter
@export var CharacterRight: BaseCharacter
var counter: int

func _ready() -> void:
	$Char1/Scores/HealthBar.max_value = CharacterLeft.health
	$Char2/Scores/HealthBar.max_value = CharacterRight.health
	
	counter = 0

func _process(delta) -> void:
	$Char1/Scores/HealthBar.value = CharacterLeft.health
	$Char2/Scores/HealthBar.value = CharacterRight.health
	if CharacterLeft.health or CharacterRight.health < 0:
		pass

func _on_atk_r_pressed() -> void:
	CharacterRight.deal_damage(CharacterLeft)
	var damage = Label.new()
	damage.position = Vector2(300,80)
	damage.text = str(-CharacterRight.attack)
	add_child(damage)
	print("a")

func _on_atk_l_pressed() -> void:
	CharacterLeft.deal_damage(CharacterRight)
	var damage = Label.new()
	damage.position = Vector2(950,80)
	damage.text = str(-CharacterLeft.attack)
	add_child(damage)
	print("a")
