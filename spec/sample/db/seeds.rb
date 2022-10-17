# frozen_string_literal: true

30.times do
  title = "not allowed to something? this object on '/app/vendor/bundle/ruby/3.0.0/gems/**.rb:223:in `authorize''"
  request = "GET </daf/dashboard>"
  controller_name = ["SomeController1", "SomeController2", "SomeController3", "SomeController4"].sample
  action_name = ["index", "show", "new", "edit"].sample
  exception_class = "Pundit::NotAuthorizedError"
  backtrace = ["/app/app/controllers/#{controller_name.underscore}_controller.rb:3:in `#{action_name}'"]
  user_type = "User"
  user_id = [1, 2, 3, 4, 5, 6, 7, 8].sample

  Monocle::AuthorizationException.create(
    title: title,
    request: request,
    controller_name: controller_name,
    action_name: action_name,
    exception_class: exception_class,
    backtrace: backtrace,
    user_type: user_type,
    user_id: user_id
  )
end
