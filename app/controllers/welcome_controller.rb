class WelcomeController < ApplicationController
  def index
    @pins = Pin.all
  end

  def show 
  end
end
