Rails.application.routes.draw do
  resources :movies, except: [:edit, :new] do
    scope module: :movies do
      resources :reservations
    end
  end
end
