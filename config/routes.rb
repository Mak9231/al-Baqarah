# Rails.application.routes.draw do
#   get "sessions/new"
#   get "sessions/create"
#   get "sessions/destroy"
#   root "home#index"

#   resources :videos, only: [:index, :show]
#   resources :series, only: [:index, :show, :new, :create]


# end



Rails.application.routes.draw do
  # Page d'accueil
  root "home#index"

  # Connexion admin
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Interface admin protégée
  namespace :admin do
    resources :series, only: [:index, :edit, :update, :destroy]
  end

  # Accès public aux séries et vidéos
  resources :videos, only: [:index, :show]
  resources :series, only: [:index, :show, :new, :create]

  # (optionnel) routes debug actuelles à retirer si non utilisées
  # get "sessions/new"
  # get "sessions/create"
  # get "sessions/destroy"
end
