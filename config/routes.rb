Rails.application.routes.draw do

  get 'local-transactions/:path(/:authority)' => "local_transactions#show"

  get 'content-items' => "content_items#index"
  get 'content-items/*path' => "content_items#show"

  get 'error/:code' => 'error#code'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
end
