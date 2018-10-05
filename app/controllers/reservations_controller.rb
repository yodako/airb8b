class ReservationsController < ApplicationController

  def create
    Filter.create(category:3, room_type:2, capacity:2,bedroom_counter: 1,bathroom_counter: 1)
    Reservation.create(reservation_params_confirm)
    redirect_to '/'
  end
  def reservation_confirm
    @reservation = Reservation.new(reservation_params)
    @room = Room.find(params[:room_id])
  end

  def show
    redirect_to controller: :rooms, action: :index
  end

  private
  def reservation_params
    params.require(:reservation).permit(:check_in,:check_out,:occupancy)
  end

  def reservation_params_confirm
    params.require(:reservation).permit(:check_in,:check_out,:occupancy).merge(user_id:1,room_id:params[:room_id],price_per_night: 122)
  end

end
