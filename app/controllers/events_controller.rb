# -*- coding: utf-8 -*-
class EventsController < ApplicationController
  before_action :authenticate, except: :show

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event, notice: '$B:n@.$7$^$7$?(B'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :place, :event_image, :event_image_cache,
      :remove_event_image, :content, :start_time, :end_time
    )
  end
end
