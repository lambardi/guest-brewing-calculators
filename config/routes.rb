Guest::Application.routes.draw do
  get 'abv_calculator' => 'abv_calculator#index'
  post 'abv_calculator' => 'abv_calculator#calculate'
end
