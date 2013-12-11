Mrlowes::Application.routes.draw do

  resources :appointments

  root 'appointments#new'

end
