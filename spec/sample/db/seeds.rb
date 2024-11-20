# frozen_string_literal: true

count = ENV["count"].to_i || 100

# exception title / name
title = "not allowed to something? this object on '/app/vendor/bundle/ruby/3.0.0/gems/**.rb:223:in `authorize''"
exception_class = "Pundit::NotAuthorizedError"

# request path, controller, action_name
requests = [
  ["GET </products>", "ProductsController", "index"],
  ["GET </products/1>", "ProductsController", "show"],
  ["GET </products/2>", "ProductsController", "show"],
  ["GET </products/3/edit>", "ProductsController", "edit"],
  ["GET </accounts>", "AccountsController", "index"],
  ["GET </accounts/new>", "AccountsController", "new"],
  ["GET </accounts/1>", "AccountsController", "show"],
  ["GET </checkouts/new>", "CheckoutController", "new"],
  ["GET </share/new>", "ShareController", "new"]
]

# user information
user_type = "User"
user_ids = [1, 2, 3, 4, 5, 6, 7, 8]

# created time ranges
created_dates = [1.hour.ago, 1.day.ago, 2.days.ago, 3.days.ago, 1.week.ago, 2.weeks.ago, 3.weeks.ago]

count.times do
  request = requests.sample

  exception = Monocle::AuthorizationException.create(
    title: title,
    request: request[0],
    controller_name: request[1],
    action_name: request[2],
    exception_class: exception_class,
    backtrace: ["/app/app/controllers/#{request[1].underscore}_controller.rb:3:in `#{request[2]}'"],
    user_type: user_type,
    user_id: user_ids.sample,
    created_at: created_dates.sample
  )

  # exception.update_column(:created_at, created_dates.sample)
end
