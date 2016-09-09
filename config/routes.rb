Rails.application.routes.draw do
  get '/' => 'pages#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts' => 'contacts#create'

  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'
end
