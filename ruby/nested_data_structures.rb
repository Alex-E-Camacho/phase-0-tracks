# Weekly Meal Plan <-- hash
# - Day of the week <-- hash
# 	- Breakfast/Lunch/Dinner <-- hash
# 		- Dish <-- array of ingredients

	
meal_plan = {
	monday: {
		breakfast: {
			'French toast' => ["eggs", "bread", "maple syrup"],
			calories: 250,
			vegan: false
		},
		lunch: {
			'PB&J sandwich' => ["bread", "peanut butter" "jelly"],
			calories: 120,
			vegan: true
		},
		dinner: {
			'Mushrooms and potatoes' => ["mushrooms", "potatoes", "rosemary"],
			calories: 200,
			vegan: true
		}
	},
	tuesday: {
		breakfast: {
			'Mushroom omlette' => ["eggs", "mushrooms", "rosemary", "feta cheese"],
			calories: 150,
			vegan: false
		},
		lunch: {
			'Mozzarella sandwich' => ["bread", "fresh mozzarella" "basil", "olive oil"],
			calories: 350,
			vegan: false
		},
		dinner: {
			'Tofu scramble' => ["tofu", "spinach", "tomatoes", "onions"],
			calories: 175,
			vegan: true
		}
	},
	wednesday: {
		breakfast: {
			'Smoothie' => ["kale", "dried oats", "strawberries", "almond milk", "honey"],
			calories: 190,
			vegan: false
		},
		lunch: {
			'Spinach curry' => ["tofu", "spinach", "ginger", "tomatoes", "spices"],
			calories: 300,
			vegan: true
		},
		dinner: {
			'Pizza' => ["dough", "marinara", "mushrooms", "basil", "mozzarella"],
			calories: 550,
			vegan: false
		}
	},
}

meal_plan[:monday]

p meal_plan[:wednesday][:lunch][:calories]

meal_plan[:monday][:breakfast]['French toast'][2] = "vermont maple syrup"

meal_plan[:wednesday][:breakfast]['Smoothie'].drop(1)