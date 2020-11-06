class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.create!(:name => params[:room_name])
    redirect_to room_path(@room)
  end

  def show
    id = params[:id]
    @room = Room.find(id)
  end
end
