class LocationsController < ApplicationController

  def index
    @region = Region.find_by(name: params['name'])
    @locations = Location.all.order('date')
    render('index.html.erb')
  end

  def show
    @region = Region.find_by(name: params['name'])
    @location = Location.find(params['id'])


  end

  def new
    @regions = Region.all
    @region = Region.find_by(name: params['name'])
    render('new.html.erb')
  end

  def create
    region = Region.find_by(name: params['name'])
    location = region.locations.new(
      caption: params['caption'],
      region_name: params['region_name'],
      image_url: params['image_url'],
      date: params['date'],
      nearest_area: params['nearest_area']
    )

    location.save

    redirect_to("/regions/#{region.name}/#{location.id}")
  end

  def edit
    @regions = Region.all
    @region = Region.find_by(name: params['name'])
    @location = Location.find(params['id'])
    render('edit.html.erb')
  end

  def update
    region = Region.find_by(name: params['name'])

    location = region.locations.find(params['id'])
    location.caption = params['caption']
    location.region_name = params['region_name']
    location.image_url = params['image_url']
    location.date = params['date']
    location.nearest_area = params['nearest_area']

    location.save
    redirect_to("/regions/#{region.name}/#{location.id}")
  end

  def warning
    @region = Region.find_by(name: params['name'])
    @location = Location.find(params['id'])
    render('warning.html.erb')
  end

  def destroy
    @region = Region.find_by(name: params['name'])
    location = Location.find(params['id'])
    location.destroy
    Rails.logger.warn(location.caption + " LOCATION DESTROYED")
    redirect_to("/regions/#{@region.name}")
  end

end
