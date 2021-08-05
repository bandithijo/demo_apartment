Rails.application.routes.draw do
  constraints subdomain: /^(?!www)(\w+)/ do
    resources :projects
  end

  resources :users
end
