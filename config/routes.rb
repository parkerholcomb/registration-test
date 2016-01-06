Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations", :sessions => "users/sessions"}

  root 'pages#checkout'

  post 'process-checkout' => 'pages#process_checkout', as: 'process_checkout'
  post 'process-card' => 'pages#process_card', as: 'process_card'
end
