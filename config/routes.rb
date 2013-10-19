ThemeparcThemes::Application.routes.draw do
  root 'products#index', as: 'home'

  match 'themes/:theme_name', to: 'products#show', via: 'get'
end
