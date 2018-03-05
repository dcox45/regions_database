class RegionsController < ApplicationController

#HOME

  def home
    @regions = Region.order('begDate')
    render('!home.html.erb')
  end

#REGIONS

  def show
    @regions = Region.all
    @region = Region.find_by(name: params['name'])
    @locations = Location.order('date')
    render('show.html.erb')
  end

  def new
    render('new.html.erb')
  end

  def create
    region = Region.new(region_params)

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
    redirect_to("/")
  end

  def warning
    @region = Region.find_by(name: params['name'])
    render("warning.html.erb")
  end

  def destroy
    region = Region.find_by(name: params['name'])
    region.destroy
    redirect_to("/")
  end

  private

  def region_params
    params.require(:region).permit(:image, :name, :image_url, :begDate, :endDate)
  end

end
