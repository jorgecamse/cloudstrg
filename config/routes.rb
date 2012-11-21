Cloudstrg::Engine.routes.draw do
  resources :configs

  resources :remoteobjects

  resources :cloudstrgplugins

  get '/cloudstrgplugins/:plugin_id/files(.:format)' => 'remoteobjects#index'

end
