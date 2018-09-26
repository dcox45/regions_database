class RegionsController < ApplicationController

#HOME

  def home
    # @rs = Region.all
    @regions = Region.all.order(:begDate)  # RECENTLY ADDED ".ALL"
    @years = ((Date.today - @regions.first.begDate) / 365).to_i    #"Date.today" replaced longer form (@region.last.endDate)
    @days = (Date.today - @regions.first.begDate).to_i
    render('!home.html.erb')
  end

#REGIONS

  def show
    @regions = Region.all
    @region = Region.find_by(name: params['name'])
    @locations = @region.locations.order('date')
    @first = @locations.first.date.strftime("%B %d, %Y")
    render('show.html.erb')
  end

  def new
    @region = Region.new
    render('new.html.erb')
  end

  def create
    region = Region.new(region_params)
    if @photo.save
      flash[:notice] = "Successfully added new photo!"
      redirect_to root_path
    else
      flash[:alert] = "Error adding new photo!"
      render :new
    end
  end

  def edit
    @region = Region.find_by(name: params['name'])
    render('edit.html.erb')
  end

  def update
    region = Region.find_by(name: params['name'])
    region.name = params['name'].downcase
    region.image_url = params['image_url']
    region.begDate = params['begDate']
    region.endDate = params['endDate']
    region.description = params['description']
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

  def about
    render("about.html.erb")
  end

  private

  def region_params
    params.require(:region).permit(:image, :name, :image_url, :begDate, :endDate, :description)
  end

end
