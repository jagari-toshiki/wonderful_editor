Rails.application.routes.draw do
  mount_devise_token_auth_for "User", at: "auth"

  as :user do
    # Define routes for User within this block.
  end

  as :user do
    # Define routes for User within this block.
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
