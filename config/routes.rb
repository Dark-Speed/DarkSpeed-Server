Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/login' => 'login#login', via: :post
  match '/create_account' => 'login#create_account', via: :post
  match '/delete_user' => 'login#delete_user', via: :post
  match '/reset_password' => 'login#reset_password', via: :post
end
