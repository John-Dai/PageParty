# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

VoteLine.delete_all
VoteLine.create(:code=>'<h1>Click on a line to</h1>',
		:votes=>0)
VoteLine.create(:code=>'<h2>vote. The one with</h2>',
		:votes=>0)
VoteLine.create(:code=>'<h3>the highest will be</h3>',
		:votes=>0)
VoteLine.create(:code=>'<h4>appended to this page\'s</h4>',
		:votes=>0)
VoteLine.create(:code=>'<h5>source code!</h5>',
		:votes=>0)

File.open("public/wsj_min", "r").each_line do |line|
	if line.length<200
		CodeLine.create(:code=>line)
	end
end
