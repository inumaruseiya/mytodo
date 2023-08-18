Rails.application.routes.draw do
 get '', to: 'todos#index'
 get 'todos', to: 'todos#index'
 post 'todos', to: 'todos#add'
 delete 'todos/:id', to: 'todos#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
