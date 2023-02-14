class RoutesController < ApplicationController
  before_action :set_route, except: [:create, :index]

  def index
  	@routes = Route.all
  	render json: @routes
  end

  def show
  	render json: @route
  end

  def create
  	@route = Route.create(name: params[:name])
    render json: @route
  end

  def update
  	@route.update(name: params[:name])
  	render json: @route
  	
  end

  def departs
  	render json: @route.departs
  end

  def deliveries
  	@deliveries = []
  	@route.departs.each do |depart|
  	  @deliveries << depart.deliveries
  	end
  	render json: @deliveries
  end

  private

  def set_route
  	@route = Route.find(params[:route_id])
  end
end
