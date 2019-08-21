Rails.application.routes.draw do
  resources :weathers
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
 
  get 'newsearch' => 'event#newsearch'


  
   resources :profiles do
    resources:books
  end  
  
  resources:books
  
  get 'findlift' => 'trips#findlift'
  get 'weather' => 'weathers#weather'
  get 'weathertest' => 'weathers#weather2'
  match 'searchweather', to: 'weathers#getinfoweather', via: [:get, :post]
  

    
  devise_for :users
  root :to => 'home#index'
  get 'home/index'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
