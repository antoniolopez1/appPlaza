Rails.application.routes.draw do
  get 'luces/index'
  get 'luces/status'
  get 'luces/perch/:value', to: 'luces#perch', as: 'luces_perch'
  get 'luces/intch/:value', to: 'luces#intch', as: 'luces_intch'
  get 'luces/parkch/:value', to: 'luces#parkch', as: 'luces_parkch'
  get 'luces/colorch/:r/:g/:b', to: 'luces#colorch', as: 'luces_colorch'
  get 'luces/turn_on_all'
  get 'luces/turn_off_all'
root 'luces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
