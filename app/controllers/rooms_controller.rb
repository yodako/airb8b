class RoomsController < ApplicationController

  def index
    @rooms_world = Room.all.limit(6)
    @rooms_ny = Room.all.limit(6)
  end

  def new_introduction
  end

  def new
    @room  = Room.new
  end

  def show
    room = Room.find(params[:id])
  end

  def reservation_confirm
  end

  def create
    Room.create(room_params)
    redirect_to action:new_introduction
  end

  def serch
    @rooms = Room.all
  end

  private
  def room_params
    params.require(:room).permit(:kind,:note,:ki,:no)
  end

end
