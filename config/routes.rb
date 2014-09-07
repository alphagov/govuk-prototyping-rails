Rails.application.routes.draw do
  get 'formats/:format/:name' => 'formats#show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
end
