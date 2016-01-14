Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  root to: "pages#front"
  get 'home', to: 'videos#home'
  resources 'videos' do
    collection do
      get 'search', to: 'videos#search'
    end
  end
end
