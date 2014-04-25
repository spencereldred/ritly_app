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
#  Prefix Verb URI Pattern                          Controller#Action
#    root GET  /                                    urls#index
#    urls GET  /urls/index(.:format)                urls#index
# new_url GET  /urls/new(.:format)                  urls#new
# preview GET  /go/:random_string/preview(.:format) urls#preview
#      go GET  /go/:random_string(.:format)         urls#go
#    show GET  /urls/:id/show(.:format)             urls#show
#  create POST /urls(.:format)                      urls#create

end