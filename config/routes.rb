Rails.application.routes.draw do
  # NHO: careful of indentation
  resources :doctors, only: [:index, :show] do # NHO: looks like you are not using all of your doctors routes so I would limit them
    resources :reviews
  end
  root to: redirect('/doctors')
end
