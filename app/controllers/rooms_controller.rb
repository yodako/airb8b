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
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  def reservation_confirm
  end

  def create
    #親要素のDBにデータを保存するロジック。viewでfields_forとmodelにaccept_nested_attribute_forを定義
    room    = Room.create(room_params)
    amenity = Amenity.create(amenity_params)
    rule    = Rule.create(rule_params)
    filter  = Filter.create(filter_params)
    room.amenity_id = amenity.id
    room.rule_id    = rule.id
    room.filter_id  = filter.id
    room.save
    redirect_to action: :new_introduction
  end

  def serch
    @rooms = Room.all
  end

  private
  def room_params
    params.require(:room).permit(:location,:post_number,:prefecture,:city,:image,:subject,:price,:currency,:title).merge(host_id: rand(100))
  end
  def amenity_params
    params[:room][:amenity_attributes].permit(:must_item,:wifi,:shampoo,:closet,:television,:heater,:aircon,:breakfast,:pet,:iron)
  end
  def rule_params
    params[:room][:rule_attributes].permit(:rule_pet,:rule_smoking,:rule_party,:prior_stair,:prior_noize,:prior_pet,:prior_parking,:prior_sharespace,:prior_security,:prior_guns)
  end
  def filter_params
    params[:room][:filter_attributes].permit(:category,:room_type,:capacity,:bedroom_counter,:bathroom_counter)
  end

end
