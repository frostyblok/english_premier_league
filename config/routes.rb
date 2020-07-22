Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "league_tables#show"
  get "/raw_table" => "league_tables#raw_table"
end
