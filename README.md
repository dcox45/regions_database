####PRACTICING BRANCHING AND PULL REQUESTS#####

HELLO WORLD.  

PLEASE BEAR WITNESS TO THE CHANGES I HAVE MADE IN THIS FILE. 

I HAVE A BURNING DESIRE TO WANDER THE EARTH, AND OBSERVE ITS MANY PHENOMENA.  

NO ONE CAN DOUBT MY ABILITY TO ADEQUATELY CATEGORIZE MY EXPERIENCES.  


<!-- #PROBLEMS / SOLUTIONS LOG

# problem: edit locations ('/:id/edit') did not work and would call up the regions controller
#   solution: :name and :id were being interpreted as the same - changed URL to '/location/:id/edit'



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
      # submit to /regions/:name -->
