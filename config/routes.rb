Rails.application.routes.draw do
  get '/' => 'pages#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts' => 'contacts#create'
end
