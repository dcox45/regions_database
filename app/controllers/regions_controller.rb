class RegionsController < ApplicationController
  def home
    @regions = Region.all
    render('home.html.erb')
  end

  def show
    @region = Region.find_by(name: params['name'])
    @locations = Location.find_by(region_name:  params['name'])
  end

  region#show
  region stuf..

  <% @locations.each do |location|%>
    <h2>location.name</h2>
    image
  <%end%>

end
