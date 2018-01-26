Rails.application.routes.draw do
  #HOME PAGE
  get('/regions', {:controller => 'regions', :action => 'home'})

  #REGIONS
  get('/regions/:name', {:controller => 'regions', :action => 'show'})
  get('/new_region', {:controller => 'regions', :action => 'new'})
  get('/create_region', {:controller => 'regions', :action => 'create'})
  get('/:name/edit', {:controller => 'regions', :action => 'edit'})
  get('/:name/update_region', {:controller => 'regions', :action => 'update'})
  get('/destroy_region/:name', {:controller => 'regions', :action => 'destroy'})

  #LOCATIONS
  get('/regions/:name/locations', {:controller => 'locations', :action => 'index'})


  










end


  # @regions = Region.all
  #   if region ==
  #
  # @region = Region.find(params['region'])
  #
  # if Location.region_id == Region.name
