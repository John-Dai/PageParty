class HomeController < ApplicationController
  def index
  	  @vote_lines = VoteLine.all
  end
  
  def create
  	  @maxid=0
  	  @vote_lines = VoteLine.all
  	  @maxcode=""
    @vote_lines.each do |vote_line|
	if vote_line.votes>0
		@maxid=vote_line.id
		@maxcode=vote_line.code
		logger.debug vote_line.code
	end
     end
     
  end
  
end
