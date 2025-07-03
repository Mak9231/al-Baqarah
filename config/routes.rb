





Rails.application.routes.draw do
  get "subjects/index"
  get "subjects/show"
  #get "quran/surahs"
  #get "quran/subjects"
  #get "quran/arabic"
  root "home#index"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  namespace :admin do
    resources :series, only: [:index, :edit, :update, :destroy]
  end

  # Si tu veux garder le namespace pour les leçons
  # namespace :coran do
  #   resources :lessons
  # end

  resources :videos, only: [:index, :show, :new, :create]
  resources :series, only: [:index, :show, :new, :create]
  resources :lessons
  resources :subjects, only: [:index, :show]


  get "/decouvrir", to: "pages#decouvrir", as: :decouvrir
#   get "/lessons", to: "lessons#index", as: :lessons
# get "/lessons/:id", to: "lessons#show", as: :lesson
# config/routes.rb
get '/surahs', to: 'quran#surahs'
get '/subjects', to: 'quran#subjects'
get '/arabic', to: 'quran#arabic'
get '/surahs/:id', to: 'quran#show_surah', as: 'surah'
get '/test_quran_json', to: 'quran#test_json'


get '/quran', to: 'quran#surahs'
get '/quran/:id', to: 'quran#show_surah', as: :quran_surah

get 'quran', to: 'quran#index', as: 'quran_index' # liste des sourates
# get 'quran/:id', to: 'quran#show_surah', as: 'quran' # vue de la sourate



end
