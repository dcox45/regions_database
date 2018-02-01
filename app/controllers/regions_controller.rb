class RegionsController < ApplicationController

#HOME

  def home
    @regions = Region.all
    render('!home.html.erb')
  end

#REGIONS

  def index_locations
    @region = Region.find_by(name: params['name'])
    @locations = Location.all
    render('index_locations.html.erb')
  end

  def new
    render('new.html.erb')
  end

  def create
    region = Region.new
    region.name = params['name']
    region.image_url = params['image_url']
    region.begDate = params['begDate']
    region.endDate = params['endDate']
    region.save
    redirect_to("/regions/#{region.name}")
  end

  def edit
    @region = Region.find_by(name: params['name'])
    render('edit.html.erb')
  end

  def update
    region = Region.find_by(name: params['name'])
    region.name = params['name']
    region.image_url = params['image_url']
    region.begDate = params['begDate']
    region.endDate = params['endDate']
    region.save
    redirect_to("/regions")
  end

  def warning
    @region = Region.find_by(name: params['name'])
    render("warning.html.erb")
  end

  def destroy
    region = Region.find_by(name: params['name'])
    region.destroy
    redirect_to("/regions")
  end

end
