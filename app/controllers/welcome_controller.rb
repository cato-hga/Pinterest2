class WelcomeController < ApplicationController
  def index
    @pins = Pin.all
  end
end
