class ConfigController < ApplicationController
  def index
    @lists = List.all
  end
end
