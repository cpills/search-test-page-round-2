Rails.application.routes.draw do
  get 'welcome/index'
  get 'search' => 'welcome#search', as: 'search'
  get 'search_results' => 'store#search_results', as: 'search_results'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
