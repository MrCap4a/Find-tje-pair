extends Node2D

var finded_pair = []
var opened_cards = []
var positions = []
var timer = false
var score = 0


func update_score(up):
	score += up
	$Score_label.text = 'Score: ' + str(score)
	if score == 16:
		$Won_label.visible = true


func _ready():
	update_score(0)
	var cards = [$Card, $Card2, $Card3, $Card4, $Card5, $Card6, $Card7, $Card8, $Card9, $Card10, $Card11, $Card12, $Card13, $Card14, $Card15, $Card16, $Card17, $Card18, $Card19, $Card20, $Card21, $Card22, $Card23, $Card24, $Card25, $Card26, $Card27, $Card28, $Card29, $Card30, $Card31, $Card32]
	for i in range(200, 901, 220):
		for j in range(100, 1201, 150):
			positions.append(Vector2(j , i))
	for card in cards:
		var pos_idx = randi_range(0, len(positions)-1)
		card.position = positions[pos_idx]
		card.scale = Vector2(0.6, 0.6)
		positions.pop_at(pos_idx)
	opened_cards = ['1', '2']

func _process(delta):
	if len(opened_cards) == 2:
		if $Card in opened_cards and $Card2 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card)
			finded_pair.append($Card2)
		elif $Card3 in opened_cards and $Card4 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card3)
			finded_pair.append($Card4)
		elif $Card5 in opened_cards and $Card6 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card5)
			finded_pair.append($Card6)
		elif $Card7 in opened_cards and $Card8 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card7)
			finded_pair.append($Card8)
		elif $Card9 in opened_cards and $Card10 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card9)
			finded_pair.append($Card10)
		elif $Card11 in opened_cards and $Card12 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card11)
			finded_pair.append($Card12)
		elif $Card13 in opened_cards and $Card14 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card13)
			finded_pair.append($Card14)
		elif $Card15 in opened_cards and $Card16 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card15)
			finded_pair.append($Card16)
		elif $Card17 in opened_cards and $Card18 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card17)
			finded_pair.append($Card18)
		elif $Card19 in opened_cards and $Card20 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card19)
			finded_pair.append($Card20)
		elif $Card21 in opened_cards and $Card22 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card21)
			finded_pair.append($Card22)
		elif $Card23 in opened_cards and $Card24 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card23)
			finded_pair.append($Card24)
		elif $Card25 in opened_cards and $Card26 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card25)
			finded_pair.append($Card26)
		elif $Card27 in opened_cards and $Card28 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card27)
			finded_pair.append($Card28)
		elif $Card29 in opened_cards and $Card30 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card29)
			finded_pair.append($Card30)
		elif $Card31 in opened_cards and $Card32 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card31)
			finded_pair.append($Card32)
		else:
			if not timer:
				$Timer.start(1)
				timer = true


func _on_timer_timeout():
	for card in opened_cards:
		if not (card is String):
			card.close()
	opened_cards = []
	timer = false


func _on_home_button_pressed():
	get_tree().change_scene_to_file('res://main_menu.tscn')


func _on_card_open():
	if $Card not in opened_cards:
		opened_cards.append($Card)
func _on_card_2_open():
	if $Card2 not in opened_cards:
		opened_cards.append($Card2)
func _on_card_3_open():
	if $Card3 not in opened_cards:
		opened_cards.append($Card3)
func _on_card_4_open():
	if $Card4 not in opened_cards:
		opened_cards.append($Card4)
func _on_card_5_open():
	if $Card5 not in opened_cards:
		opened_cards.append($Card5)
func _on_card_6_open():
	if $Card6 not in opened_cards:
		opened_cards.append($Card6)
func _on_card_7_open():
	if $Card7 not in opened_cards:
		opened_cards.append($Card7)
func _on_card_8_open():
	if $Card8 not in opened_cards:
		opened_cards.append($Card8)
func _on_card_9_open():
	if $Card9 not in opened_cards:
		opened_cards.append($Card9)
func _on_card_10_open():
	if $Card10 not in opened_cards:
		opened_cards.append($Card10)
func _on_card_11_open():
	if $Card11 not in opened_cards:
		opened_cards.append($Card11)
func _on_card_12_open():
	if $Card12 not in opened_cards:
		opened_cards.append($Card12)
func _on_card_13_open():
	if $Card13 not in opened_cards:
		opened_cards.append($Card13)
func _on_card_14_open():
	if $Card14 not in opened_cards:
		opened_cards.append($Card14)
func _on_card_15_open():
	if $Card15 not in opened_cards:
		opened_cards.append($Card15)
func _on_card_16_open():
	if $Card16 not in opened_cards:
		opened_cards.append($Card16)
func _on_card_17_open():
	if $Card17 not in opened_cards:
		opened_cards.append($Card17)
func _on_card_18_open():
	if $Card18 not in opened_cards:
		opened_cards.append($Card18)
func _on_card_19_open():
	if $Card19 not in opened_cards:
		opened_cards.append($Card19)
func _on_card_20_open():
	if $Card20 not in opened_cards:
		opened_cards.append($Card20)
func _on_card_21_open():
	if $Card21 not in opened_cards:
		opened_cards.append($Card21)
func _on_card_22_open():
	if $Card22 not in opened_cards:
		opened_cards.append($Card22)
func _on_card_23_open():
	if $Card23 not in opened_cards:
		opened_cards.append($Card23)
func _on_card_24_open():
	if $Card24 not in opened_cards:
		opened_cards.append($Card24)
func _on_card_25_open():
	if $Card25 not in opened_cards:
		opened_cards.append($Card25)
func _on_card_26_open():
	if $Card26 not in opened_cards:
		opened_cards.append($Card26)
func _on_card_27_open():
	if $Card27 not in opened_cards:
		opened_cards.append($Card27)
func _on_card_28_open():
	if $Card28 not in opened_cards:
		opened_cards.append($Card28)
func _on_card_29_open():
	if $Card29 not in opened_cards:
		opened_cards.append($Card29)
func _on_card_30_open():
	if $Card30 not in opened_cards:
		opened_cards.append($Card30)
func _on_card_31_open():
	if $Card31 not in opened_cards:
		opened_cards.append($Card31)
func _on_card_32_open():
	if $Card32 not in opened_cards:
		opened_cards.append($Card32)
