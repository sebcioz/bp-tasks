Rails.application.routes.draw do

  resources :tasks do
    member do
      put :complete
    end
  end

end
