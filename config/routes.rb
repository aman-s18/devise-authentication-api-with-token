Rails.application.routes.draw do
  scope module: :v1, defaults: {format: 'json'} do
    devise_for :users, controllers: {
        registrations: 'v1/custom_devise/registrations',
        confirmations: 'v1/custom_devise/confirmations',
        sessions: 'v1/custom_devise/sessions'
    }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
