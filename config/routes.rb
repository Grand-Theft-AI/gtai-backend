Rails.application.routes.draw do
  resources :cars
  devise_for :users,
 path: '',
 path_names: {
  sign_in: 'login',
  sign_out: 'logout',
  registration: 'register',
 },
 controllers: {
  sessions: 'users/sessions',
  registrations: 'user/registrations',
 }
end
