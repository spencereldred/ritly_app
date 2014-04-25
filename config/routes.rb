RitlyApp::Application.routes.draw do
  root to: 'ritly#index'

  get '/go/:random_string/preview', to: 'ritly#preview', as: :preview

  get '/go/:random_string', to: 'ritly#go', as: :go

  get '/ritly/:id/show', to: 'ritly#show', as: :show

  post '/ritly', to: 'ritly#create', as: :create 

#   Spencers-MacBook-Pro-2:ritly_app Spencer$ rake routes
#  Prefix Verb URI Pattern                          Controller#Action
#    root GET  /                                    ritly#index
# preview GET  /go/:random_string/preview(.:format) ritly#preview
#      go GET  /go/:random_string(.:format)         ritly#go
#    show GET  /ritly/:id/show(.:format)            ritly#show
#  create POST /ritly(.:format)                     ritly#create

end