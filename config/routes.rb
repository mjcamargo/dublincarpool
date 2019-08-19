Rails.application.routes.draw do
  get 'event/index'
  get 'meetup/index'
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  #resources :profiles
  resources :profiles do
    resources:trips
  end  
  resources:trips
  get 'index3' => 'trips#index2'
  get 'weather' => 'event#search'
  get 'newsearch' => 'event#newsearch'


  
   resources :profiles do
    resources:books
  end  
  
  resources:books
  
  get 'findlift' => 'trips#findlift'

    
  devise_for :users
  root :to => 'home#index'
  get 'home/index'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
