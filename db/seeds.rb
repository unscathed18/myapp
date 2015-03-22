# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Delete all models
models = Dir.foreach("#{Rails.root.to_s}/app/models").find_all {|model_name| !(/admin/.match(model_name)) && /\.rb$/.match(model_name) } # Get all models

models.each {|model| eval("#{model}.destroy_all") } # For each model, destroy all records


### POPULATING DB ###
# NAME | EXISTENCE | PRICE (in euros)
products = [
	['Japanese history', 9, 30.41],
	['Dark Souls 2', 1000, 60.0],
	['Water', 100000, 0.51],
	['日本語の敬語', 32, 31.3],
	['Far cry 4', 99, 61.1],
	['Red carpet XL', 100, 21.2],
	['Yakitori Kyoto', 211, 6.33],
	['Asahi beer', 2000, 0.91],
	['Chinese for beginners booklet',11, 12.9],
	['PS4', 3000, 400.0],
	['Flipflops 42', 23, 24.2],
	['4-person sofa', 5, 311.0],
	['Contact lens sun', 100, 24.3],
	['Tokyo ghoul all volumes Blu-ray', 31, 80.0],
	['Crows zero Blu-ray', 6, 32.42],
	['Normal keyboard', 100, 9.0],
	['iPhone 6', 94, 700.99],
	['Guitar hero microphone', 100, 19.2],
	['Skater pro', 22, 499.5],
	['Logitech 2.1 THX speakers', 7, 200.1],
	['One OK Rock: Jinsei x Boku ', 19, 24.3]
];

environment_is_dev = ENV['RAILS_ENV'] == 'development' || ENV['RAILS_ENV'].nil?

if environment_is_dev

	# products.each do |product|
		
	# end

end