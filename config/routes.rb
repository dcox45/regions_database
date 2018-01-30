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

  get('/regions/:name/:caption', {:controller => 'locations', :action => 'show'})

  get('/new_location', {:controller => 'locations', :action => 'new'})

  get('/create_location', {:controller => 'locations', :action => 'create'})

  get('/:name/:caption/edit', {:controller => 'locations', :action => 'edit'})

  get('/update_location/:caption', {:controller => 'locations', :action => 'update'})

  get('/destroy_location/:caption', {:controller => 'locations', :action => 'destroy'})


end

#PROBLEMS / SOLUTIONS LOG

# problem: edit locations ('/:caption/edit') did not work and would call up the regions controller
#   solution: :name and :caption were being interpreted as the same - changed URL to '/location/:caption/edit'
