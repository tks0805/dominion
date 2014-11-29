class PlayController < ApplicationController

def index
  if params[:list][:name].present?
    @card = Card.where(:id => params[:list][:name]).first
  end

end

end
