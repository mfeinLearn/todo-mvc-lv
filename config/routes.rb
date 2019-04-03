Rails.application.routes.draw do
  resources :lists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # You can have the root of your site routed with "root"
  root 'lists#index'
end

# 1. this route 'site#index' hit the SiteController
# 2. due to the implicit rendering from just the action
#   def index
#   end
# 3. <%= yield %> - enables us to render the erb in question in the 'site#index'
#  - it is convention to render the site views/index
