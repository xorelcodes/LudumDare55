extends ItemList

func _ready():
    for n in item_count:
        set_item_tooltip_enabled(n, false)