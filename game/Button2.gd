extends Button


func _ready():
	var button = Button.new()
	button.text = "Click me"
	button.connect("pressed", self, "_button_pressed")
	add_child(button)

func _button_pressed():
	print("Hello world!")
