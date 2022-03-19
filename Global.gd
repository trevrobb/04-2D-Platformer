extends Node

const SAVE_PATH = "user://savegame.sav"
const SECRET = "C220 Is the Best!"
onready var music = "res://Assets/Song_1.mp3"
var save_file = ConfigFile.new()


onready var HUD = get_node_or_null("/root/Game/UI/HUD")
onready var Game = load("res://Game.tscn")

var save_data = {
	"general": {
		"score":0
		,"health":100
		}
		}
		
var fade = null
var fade_speed = 0.015

var fade_in = false
var fade_out = ""

var death_zone = 1000

func _ready():
	update_score(0)
	update_health(0)

func update_score(s):
	save_data["general"]["score"] += s
	

func update_health(h):
	save_data["general"]["health"] += h
	
	
func _physics_process(_delta):
	if fade == null:
		fade = get_node_or_null("/root/Game/Camera/Fade")
	if fade_out != "":
		execute_fade_out(fade_out)
	if fade_in:
		execute_fade_in()

func restart_level():
	HUD = get_node_or_null("/root/Game/UI/HUD")
	update_score(0)
	update_health(0)
	get_tree().paused = false
func save_game():
	save_data["general"]["coins"] = []					
	save_data["general"]["mines"] = []
	var save_game = File.new()						
	save_game.open_encrypted_with_pass(SAVE_PATH, File.WRITE, SECRET)	
	save_game.store_string(to_json(save_data))				
	save_game.close()					
func load_game():
	var save_game = File.new()						
	if not save_game.file_exists(SAVE_PATH):				
		return
	save_game.open_encrypted_with_pass(SAVE_PATH, File.READ, SECRET)	
	var contents = save_game.get_as_text()					
	var result_json = JSON.parse(contents)					
	if result_json.error == OK:						
		save_data = result_json.result_json				
	else:
		print("Error: ", result_json.error)
	save_game.close()							
	var _scene = get_tree().change_scene_to(Game)
	call_deferred("restart_level")
	
func start_fade_in():
	if fade != null:
		fade.visible = true
		fade.color.a = 1
		fade_in = true

func start_fade_out(target):
	if fade != null:
		fade.color.a = 0
		fade.visible = true
		fade_out = target

func execute_fade_in():
	if fade != null:
		fade.color.a -= fade_speed
		if fade.color.a <= 0:
			fade_in = false

func execute_fade_out(target):
	if fade != null:
		fade.color.a += fade_speed
		if fade.color.a >= 1:
			fade_out = ""
			


func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
