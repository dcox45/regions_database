Rails.application.routes.draw do

  #HOME PAGE
  get('/regions', {:controller => 'regions', :action => 'home'})

  #REGIONS CRUD
  get('/regions/:name', {:controller => 'regions', :action => 'show'})
  get('/new_region', {:controller => 'regions', :action => 'new'})
  get('/create_region', {:controller => 'regions', :action => 'create'})
  get('/:name/edit', {:controller => 'regions', :action => 'edit'})
  get('/update_region/:name', {:controller => 'regions', :action => 'update'})
  get('/destroy_region/:name', {:controller => 'regions', :action => 'destroy'})

  #LOCATIONS CRUD
  get('/regions/:name/:id', {:controller => 'locations', :action => 'show'})
  get('/:name/new_location', {:controller => 'locations', :action => 'new'})
  get('/:name/create_location', {:controller => 'locations', :action => 'create'})
  get('/:name/:id/edit', {:controller => 'locations', :action => 'edit'})
  get('/:name/update_location/:id', {:controller => 'locations', :action => 'update'})
  get(':name/destroy_location/:id', {:controller => 'locations', :action => 'destroy'})

  #WARNINGS
  get('/destroy_warning/:name', {:controller => 'regions', :action => 'warning'})
  get('/:name/destroy_warning/:id', {:controller => 'locations', :action => 'warning'})

  #RESTRUCURING CREATE
  #get('/new_region', {:controller => 'regions', :action => 'new'})
  #get('/new_location', {:controller => 'locations', :action => 'new'})

    # controller
      # render new
    # view
      #new: submits to /:name/create_region
      #empty placeholder for region_id dropdown


  #get('/create_region', {:controller => 'regions', :action => 'create'})
  #get('/:name/create_location', {:controller => 'locations', :action => 'create'})

    # locations controller
      #  region = params['region_name']

      #  create......
      #redirect_to("/regions/#{region.name}/#{location.id}")

    # Locations view
      #back button
        # submit to /regions/:name





end

#PROBLEMS / SOLUTIONS LOG

# problem: edit locations ('/:id/edit') did not work and would call up the regions controller
#   solution: :name and :id were being interpreted as the same - changed URL to '/location/:id/edit'
