class SelectController < ApplicationController
  def index
  end
  
  def new
    @cards = Card.where('card_id=?', "1")
  end

  def create
    list = List.new
    list.name   = params[:list_name]
    list.card1  = params[:selected][0]
    list.card2  = params[:selected][1]
    list.card3  = params[:selected][2]
    list.card4  = params[:selected][3]
    list.card5  = params[:selected][4]
    list.card6  = params[:selected][5]
    list.card7  = params[:selected][6]
    list.card8  = params[:selected][7]
    list.card9  = params[:selected][8]
    list.card10 = params[:selected][9]

    list.save!
    redirect_to :action=> 'new'
  end
end
