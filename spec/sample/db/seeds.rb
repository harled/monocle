# frozen_string_literal: true

title = "not allowed to something? this object on '/app/vendor/bundle/ruby/3.0.0/gems/**.rb:223:in `authorize''"
requests = ["GET </daf/dashboard>", "GET </daf/dashboard/123>", "GET </daf/dashboard/456>", "GET </daf/dashboard/789>", "GET </daf/dashboard/edit>"]
controller_names = ["SomeController1", "SomeController2", "SomeController3", "SomeController4"]
action_names = ["index", "show", "new", "edit"]
exception_class = "Pundit::NotAuthorizedError"
user_type = "User"
user_ids = [1, 2, 3, 4, 5, 6, 7, 8]
created_dates = [1.day.ago, 2.days.ago, 3.days.ago, 1.week.ago, 2.weeks.ago, 3.weeks.ago]

100.times do
  controller_name = controller_names.sample
  action_name = action_names.sample

  Monocle::AuthorizationException.create(
    title: title,
    request: requests.sample,
    controller_name: controller_name,
    action_name: action_names.sample,
    exception_class: exception_class,
    backtrace: ["/app/app/controllers/#{controller_name.underscore}_controller.rb:3:in `#{action_name}'"],
    user_type: user_type,
    user_id: user_ids.sample,
    created_at: created_dates.sample
  )
end
