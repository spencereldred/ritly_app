RitlyApp::Application.routes.draw do
  get "urls/index"
  
  root to: 'urls#index'

  get '/go/:random_string/preview', to: 'urls#preview', as: :preview

  get '/go/:random_string', to: 'urls#go', as: :go

  get '/urls/:id/show', to: 'urls#show', as: :show

  post '/urls', to: 'urls#create', as: :create 

#   Spencers-MacBook-Pro-2:ritly_app Spencer$ rake routes
#  Prefix Verb URI Pattern                          Controller#Action
#    root GET  /                                    ritly#index
# preview GET  /go/:random_string/preview(.:format) ritly#preview
#      go GET  /go/:random_string(.:format)         ritly#go
#    show GET  /ritly/:id/show(.:format)            ritly#show
#  create POST /ritly(.:format)                     ritly#create

end