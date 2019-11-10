categories = [
	'eletronics',
	'shirts',
	'shoes',
	'pants'
]

categories.each  do |category|
	Category.create(:name => category)
end