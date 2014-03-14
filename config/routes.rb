Constraint::Application.routes.draw do

  root 'vacation#index'
  get '/:vacation' => 'vacation#view', as: :vacation, :constraints => VacationConstraint

end
