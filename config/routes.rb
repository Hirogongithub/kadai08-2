Rails.application.routes.draw do
   root 'pages#index'
   get 'comments/new'
   get 'topics/new'
   get 'sessions/new'
   get 'pages/help'

   resources :users
   resources :topics

   get 'favorites/index'
   post '/favorites', to: 'favorites#create'

   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'

   resources :users
   resources :topics
   resources :comments
end
