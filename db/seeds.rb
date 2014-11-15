# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

VoteLine.delete_all
VoteLine.create(:code=>'<h1>This is heading 1</h1>',
		:votes=>0)
VoteLine.create(:code=>'<h2>This is heading 2</h2>',
		:votes=>0)
VoteLine.create(:code=>'<h3>This is heading 3</h3>',
		:votes=>0)
VoteLine.create(:code=>'<h4>This is heading 4</h4>',
		:votes=>0)
VoteLine.create(:code=>'<h5>This is heading 5</h5>',
		:votes=>0)
