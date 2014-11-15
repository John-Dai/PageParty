class HomeController < ApplicationController
  def index
  	  @vote_lines = VoteLine.all
  end
end
