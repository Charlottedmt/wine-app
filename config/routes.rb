Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wine_makers do
    resources :bottles, only:[:new, :create,]
  end

  resources :bottles, only:[:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create, :index, :show]
  end
end
