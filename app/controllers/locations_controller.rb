class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render('index.html.erb')
  end

end
