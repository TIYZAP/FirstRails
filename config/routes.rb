Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get '/welcome' => 'welcome#show'
  get '/welcome/:thing' => 'welcome#show'
  get '/lorem/:style' => 'welcome#lorem'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
