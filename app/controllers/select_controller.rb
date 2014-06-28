class SelectController < ApplicationController
  def index
  end
  
  def new
    @cards = Card.where('type1=? or type2=?', "1", "1")
                 .order('id')
  end

  def create
    list = List.new
    if params[:selected].length == 10
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
      list.save
    else
      
    end
    redirect_to :action=> 'new'
    
    rescue
      redirect_to :action=> 'new'    
  end
end
