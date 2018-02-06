class LocationsController < ApplicationController

  def index
    @region = Region.find_by(name: params['name'])
    @locations = Location.all
    render('index.html.erb')
  end

  def show
    @region = Region.find_by(name: params['name'])
    @location = Location.find(params['id'])
  end

  def new
    @region = Region.find_by(name: params['name'])
    render('new.html.erb')
  end

  def create
    region = Region.find_by(name: params['name'])

    location = Location.new
    location.caption = params['caption']
    location.region_id = params['region_id']
    location.image_url = params['image_url']
    location.date = params['date']
    location.city_or_CMA = params['city_or_CMA']
    location.save
    redirect_to("/regions/#{region.name}/#{location.id}")
  end

  def edit
    @region = Region.find_by(name: params['name'])
    @location = Location.find(params['id'])
    render('edit.html.erb')
  end

  def update

    region = Region.find_by(name: params['name'])

    location = Location.find(params['id'])
    location.caption = params['caption']
    location.region_id = params['region_id']
    location.image_url = params['image_url']
    location.date = params['date']
    location.city_or_CMA = params['city_or_CMA']
    location.save
    redirect_to("/regions/#{region.name}/#{location.id}")
  end

  def destroy
    location = Location.find(params['id'])
    location.destroy
    redirect_to("/regions/:name")
  end

end
