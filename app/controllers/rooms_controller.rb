class RoomsController < ApplicationController

  def new_introduction
  end

  def new
    @room  = Room.new
  end

  def show
    @room = Room.find(1)
  end

  def reservation_confirm
  end

  def create
    Room.create(room_params)
    redirect_to action:new_introduction
  end

  private
  def room_params
    params.require(:room).permit(:kind,:note,:ki,:no)
  end

end
