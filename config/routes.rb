Rails.application.routes.draw do
  root "regions#home"

  #REGIONS
  get('/regions/:name', {:controller => 'regions', :action => 'show'})
  get('/new_region', {:controller => 'regions', :action => 'new'})
  get('/create_region', {:controller => 'regions', :action => 'create'})
  get('/:name/edit', {:controller => 'regions', :action => 'edit'})
  get('/update_region/:name', {:controller => 'regions', :action => 'update'})
  get('/destroy_region/:name', {:controller => 'regions', :action => 'destroy'})

  #LOCATIONS
  get('/regions/:name/:id', {:controller => 'locations', :action => 'show'})
  get('/:name/new_location', {:controller => 'locations', :action => 'new'})
  get('/:name/create_location', {:controller => 'locations', :action => 'create'})
  get('/:name/:id/edit', {:controller => 'locations', :action => 'edit'})
  get('/:name/update_location/:id', {:controller => 'locations', :action => 'update'})
  get('/:name/destroy_location/:id', {:controller => 'locations', :action => 'destroy'})
  get('/all_locations', {:controller => 'locations', :action => 'index'})

  #WARNINGS
  get('/destroy_warning/:name', {:controller => 'regions', :action => 'warning'})
  get('/:name/destroy_warning/:id', {:controller => 'locations', :action => 'warning'})

  get('/about', {:controller => 'regions', :action => 'about'})

end
