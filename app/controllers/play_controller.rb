class PlayController < ApplicationController

  # (1)
  include ActionController::Live
 
  def stream
    # (2)
    response.headers['Content-Type'] = 'text/event-stream'
 
    10.times do |i|
      # (3)
      response.stream.write("event: message\n")
      response.stream.write("data: Hello #{i+1}\n\n")
      sleep 1
    end
 
    response.stream.write("event: done\n")
    response.stream.write("data: done\n\n")
  ensure
    # (4)
    response.stream.close
  end

  def index
    if params[:list][:name].present?
      @card = Card.where(:id => params[:list][:name]).first
    end
  end

end
