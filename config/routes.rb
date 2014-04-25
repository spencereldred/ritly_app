RitlyApp::Application.routes.draw do
  

  root to: 'urls#index'

  get "urls", to: 'urls#index', as: :urls

  get 'urls/new', to: 'urls#new', as: :new_url

  get 'urls/:id', to: 'urls#show', as: :url

  get 'urls/:id/edit', to: 'urls#edit', as: :edit_url

  patch 'urls/:id', to: 'urls#update'

  get 'go/:id/preview', to: 'urls#show', as: :preview

  get 'urls/go/:random_string', to: 'urls#redirection', as: :go

  get '/urls/:id/show', to: 'urls#show', as: :show

  post '/urls', to: 'urls#create', as: :create 

# Spencers-MacBook-Pro-2:ritly_app Spencer$ rake routes
#   Prefix Verb  URI Pattern                       Controller#Action
#     root GET   /                                 urls#index
#     urls GET   /urls(.:format)                   urls#index
#  new_url GET   /urls/new(.:format)               urls#new
#      url GET   /urls/:id(.:format)               urls#show
# edit_url GET   /urls/:id/edit(.:format)          urls#edit
#          PATCH /urls/:id(.:format)               urls#update
#  preview GET   /go/:id/preview(.:format)         urls#show
#       go GET   /urls/go/:random_string(.:format) urls#redirection
#     show GET   /urls/:id/show(.:format)          urls#show
#   create POST  /urls(.:format)                   urls#create

end