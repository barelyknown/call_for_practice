Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :practice_phone_numbers do
    resources :incoming_calls
  end

  resources :incoming_calls do
    post "purpose_routing", to: "purpose_routing#create", as: :purpose_routing
    post "scenario_routing", to: "scenario_routing#create", as: :scenario_routing
    post "prompt_pre_recording", to: "prompt_pre_recording#create", as: :prompt_pre_recording
  end

  resources :user_practice_phone_numbers
  resources :scenarios
  resources :prompts

end
