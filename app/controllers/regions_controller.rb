class RegionsController < ApplicationController

#HOME

  def home
    @regions = Region.all
    render('!home.html.erb')
  end

#REGIONS

  def show
    @region = Region.find_by(name: params['name'])
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
    redirect_to("/regions/#{region.name}")
  end

  def index_locations
    @region = Region.find_by(name: params['name'])
    @locations = Location.all
    render('index_locations.html.erb')
  end

  def destroy
    region = Region.find_by(name: params['name'])
    region.destroy
    redirect_to("/regions")
  end




  # region#show
  # region stuf..
  #
  # <% @locations.each do |location|%>
  #   <h2>location.name</h2>
  #   image
  # <%end%>

end
