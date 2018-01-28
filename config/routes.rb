Rails.application.routes.draw do

  #HOME PAGE
  get('/regions', {:controller => 'regions', :action => 'home'})

  #REGIONS
  get('/regions/:name', {:controller => 'regions', :action => 'show'})
  get('/new_region', {:controller => 'regions', :action => 'new'})
  get('/create_region', {:controller => 'regions', :action => 'create'})
  get('/:name/edit', {:controller => 'regions', :action => 'edit'})
  get('/update_region/:name', {:controller => 'regions', :action => 'update'})
  get('/destroy_region/:name', {:controller => 'regions', :action => 'destroy'})

  #LOCATIONS
  get('/regions/:name/locations', {:controller => 'locations', :action => 'index'})
  get('/new_location', {:controller => 'locations', :action => 'new'})
  get('/create_location', {:controller => 'locations', :action => 'create'})
  get('/:location/edit', {:controller => 'locations', :action => 'edit'})
  get('/:caption/update_location', {:controller => 'locations', :action => 'update'})
  get('/destroy_location/:caption', {:controller => 'locations', :action => 'destroy'})


end
