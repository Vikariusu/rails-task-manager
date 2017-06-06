Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read all tasks
  get "tasks", to: "tasks#index"

  # post the task (params)
  post "tasks", to: "tasks#create"

  # create one task
    # display the form
  get "tasks/new", to: "tasks#new"

    # update one task
    # get the form
  get "tasks/:id/edit", to: "tasks#edit", as: 'edit_task'

  # read one task
  get "tasks/:id", to: "tasks#show", as: "task"

    # update (patch) the task (params)
  patch "tasks/:id", to: "tasks#update"

  # delete one task
  delete "tasks/:id", to: "tasks#destroy"
end



# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   # read all tasks
#   get "tasks", to: "tasks#index"
#   # read one task
#   get "tasks/:id", to: "tasks#show", as: "task"


#   # create one task
#     # display the form
#   get "tasks/new", to: "tasks#new"
#     # post the task (params)
#   post "tasks", to: "tasks#create"

#   # update one task
#     # get the form
#   get "tasks/:id/edit", to: "tasks#edit"
#     # update (patch) the task (params)
#   patch "tasks/:id", to: "tasks#update"

#   # delete one task
#   delete "tasks/:id", to: "tasks#destroy"
# end
