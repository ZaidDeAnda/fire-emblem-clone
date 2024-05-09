extends Label

@export var Character: BaseCharacter

func _process(delta) -> void:
	set_text(str("Ataque: ", Character.attack))
	
