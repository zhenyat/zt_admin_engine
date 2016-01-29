ZtAdmin::Engine.routes.draw do
  resources :users
  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    end
end
