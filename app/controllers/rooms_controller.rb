class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new_introduction
  end

  def new
    @room  = Room.new
  end

  def show
  end

  def create
    Room.create(room_params)
    redirect_to action:new_introduction
  end

  def serch
  end

  private
  def room_params
    params.require(:room).permit(:kind,:note,:ki,:no)
  end

end
