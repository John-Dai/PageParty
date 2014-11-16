class HomeController < ApplicationController
  include ActionController::Live
 
  Mime::Type.register "text/event-stream", :stream
   

  def index
  	  @vote_lines = VoteLine.all
  	  @applied_lines = AppliedLine.all
  	  @time=Time.now
  	  response.headers['Content-Type'] = 'text/event-stream'
  	  begin
        loop do
          response.stream.write "data: #{generate_new_values}\n\n" # Add 2 line breaks to delimitate events
          sleep 5.second
        end
      rescue IOError # Raised when browser interrupts the connection
      ensure
        response.stream.close # Prevents stream from being open forever
      end
  end
  def generate_new_values
  now = Time.now
  current_values = []

  @vote_lines.each do |company|
    previous_share = Share.where(company: company).order('timestamp DESC').first
    new_value = previous_share.value + (rand().round(2) - 0.5)
    share = Share.create(company: company, value: new_value, timestamp: Time.now)
    variation = share.value > previous_share.value ? 'up' : 'down'
    current_values << {company: company.code}
  end
  current_values.to_json
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
