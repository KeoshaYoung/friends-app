Rails.application.routes.draw do
  get "/friends" => "friends#index"
  post "/friends" => "friends#create"
  get "/friends/:id" => "friends#show"
  patch "/friends/:id" => "friends#update"
end
