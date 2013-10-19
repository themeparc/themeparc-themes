ThemeparcThemes::Application.routes.draw do
  root 'products#index'

  match 'themes/:theme_name', to: 'products#show', via: 'get'
end
