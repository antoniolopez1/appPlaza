Rails.application.routes.draw do
  get 'luces/index'
  get 'luces/status'
root 'luces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
