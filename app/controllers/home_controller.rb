class HomeController < ApplicationController
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
  end
  
end
