class HomeController < ApplicationController
	@@code_lines = CodeLine.all
  def index
  	  @vote_lines = VoteLine.all
  	  @applied_lines = AppliedLine.all
  end
  
  def create
  	  @prevmax=0
  	  @maxid=0
  	  @vote_lines = VoteLine.all
  	  @maxcode=""
    @vote_lines.each do |vote_line|
	if vote_line.votes>@prevmax
		@prevmax=vote_line.votes
		@maxid=vote_line.id
		@maxcode=vote_line.code
	end
     end
    applied_line=AppliedLine.create(code: @maxcode)
    VoteLine.delete_all
    size=@@code_lines.length
    VoteLine.create(:code=>@@code_lines.find(rand(size)+1).code, :votes=>0)
    VoteLine.create(:code=>@@code_lines.find(rand(size)+1).code, :votes=>0)
    VoteLine.create(:code=>@@code_lines.find(rand(size)+1).code, :votes=>0)
    VoteLine.create(:code=>@@code_lines.find(rand(size)+1).code, :votes=>0)
    VoteLine.create(:code=>@@code_lines.find(rand(size)+1).code, :votes=>0)
  end
  
end
