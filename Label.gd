extends Label

@export var Character: BaseCharacter

func _process(delta) -> void:
	set_text(str("Vida: ", Character.health))
	
