<!-- #PROBLEMS / SOLUTIONS LOG

# problem: edit locations ('/:id/edit') did not work and would call up the regions controller
#   solution: :name and :id were being interpreted as the same - changed URL to '/location/:id/edit'
