Rails.application.routes.draw do
  get('/', {:controller => 'regions', :action => 'home'})

  get('/:name', {:controller => 'regions', :action => 'show'})
end


  # @regions = Region.all
  #   if region ==
  #
  # @region = Region.find(params['region'])
  #
  # if Location.region_id == Region.name
