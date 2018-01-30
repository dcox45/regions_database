class LocationsController < ApplicationController

  def index
    @region = Region.find_by(name: params['name'])
    @locations = Location.all
    render('index.html.erb')
  end

  def show
    @region = Region.find_by(name: params['name'])
    @location = Location.find_by(caption: params['caption'])
  end

  def new
    render('new.html.erb')
  end

  def create
    location = Location.new
    location.caption = params['caption']
    location.region_id = params['region_id']
    location.image_url = params['image_url']
    location.date = params['date']
    location.city_or_CMA = params['city_or_CMA']
    location.save
    redirect_to("regions/:name/#{location.caption}")
  end

  def edit
    @location = Location.find_by(caption: params['caption'])
    render('edit.html.erb')
  end

  def update
    location = Location.find_by(caption: params['caption'])
    location.caption = params['caption']
    location.region_id = params['region_id']
    location.image_url = params['image_url']
    location.date = params['begDate']
    location.city_or_CMA = params['city_or_CMA']
    location.save
    redirect_to("/regions/:name/#{location.caption}")
  end

  def destroy
    location = Location.find_by(caption: params['caption'])
    location.destroy
    redirect_to("/regions/:name/locations")
  end

end
