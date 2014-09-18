Rails.application.routes.draw do
  get 'error/:code' => 'error#code'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
end
