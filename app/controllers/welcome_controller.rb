class WelcomeController < ApplicationController
  PER = 10

  def index
    @events = Event.page(params[:page]).per(PER)
  end
end
