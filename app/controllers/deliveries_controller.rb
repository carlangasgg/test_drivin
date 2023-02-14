class DeliveriesController < ApplicationController
  before_action :set_depart, only: [:show_depart, :delete_depart]
  before_action :set_delivery, only: [:show_delivery, :delete_depart]

  def index
  	@departs = Depart.all
  	render json: @departs
  end

  def show_depart
  	render json: @depart
  end

  def create_depart
  	@depart = Depart.create(name: params[:name], manager: params[:manager], depart_begin: params[:depart_begin], depart_end: params[:depart_end], route_id: params[:route_id])
  	render json: @depart
  end

  def delete_depart
  	@depart.destroy
  	render json: "#{@depart.name} ha sido eliminado."
  end

  def deliveries
  	@deliveries = Delivery.all
  	render json: @deliveries
  end

  def show_delivery
  	render json: @delivery
  end

  def create_delivery
  	@delivery = Delivery.create(name: params[:name], deliver: params[:deliver], address: params[:address], arrival_at: params[:arrival_at], depart_id: params[:depart_id])
  	render json: @delivery
  end

  def delete_delivery
  	@delivery.destroy
  	render json: "#{@delivery.name} ha sido eliminado."
  end  

  private

  def set_depart
  	@depart = Depart.find(params[:id])
  end

  def set_delivery
  	@delivery = Delivery.find(params[:id])
  end
end
