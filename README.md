
<h1 align="center">
  <br>
  <img src="monocle_logo.svg" alt="Monocle" width="200">
  <br>
  Monocle
  <br>
</h1>

<h4 align="center">

A suite of [ViewComponents](https://github.com/github/view_component) for plug and play use right from your [Pundit](https://github.com/varvet/pundit) exception data!

</h4>

<img src="monocle_dashboard.gif" alt="Monocle Dashboard">

## Dependencies
Monocle uses a couple libraries to deliver high quality components.
<table style="width: 100%; border: solid;">
  <thead>
    <tr>
      <th>Dependency</th>
      <th>Version</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://github.com/ViewComponent/view_component">View Components</a></td>
      <td>2.53.0</td>
    </tr>
    <tr>
      <td><a href="https://getbootstrap.com/docs/5.0/getting-started/introduction/">Bootstrap</a></td>
      <td>5.0</td>
    </tr>
    <tr>
      <td><a href="https://github.com/ankane/groupdate">Group Date</a></td>
      <td>6.1.0</td>
    </tr>
    <tr>
      <td><a href="https://www.npmjs.com/package/apexcharts">ApexCharts</a></td>
      <td>3.36.3</td>
    </tr>
  </tbody>
</table>

## Installation

Add this line to your application's Gemfile:

```ruby
# Gemfile
gem 'monocle'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install monocle

To generate the migration and build the data model, run:

```base
rails generate monocle:authorization_exceptions
rails db:migrate
```

## Usage
Once you have Monocle loaded you can render any of its view components. For example, you could render the `Monocle::ControllersOverTimeComponent` with:

```erb
<%= render Monocle::ControllersOverTimeComponent.new(events: AuthorizationException.all) %>
```

With a full list of components here:
<table style="width: 100%; border: solid;">
  <thead>
    <tr>
      <th>Component</th>
      <th>Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>ControllersOverTimeComponent</td>
      <td>Shows the number of events over time.</td>
    </tr>
    <tr>
      <td>ExceptionsByControllerComponent</td>
      <td>Shows the number of events grouped by controller name.</td>
    </tr>
    <tr>
      <td>ExceptionsByRequestComponent</td>
      <td>Shows the number of events grouped by request.</td>
    </tr>
    <tr>
      <td>ExceptionsByUserComponent</td>
      <td>Shows the number of events grouped by user id.</td>
    </tr>
    <tr>
      <td>ExceptionsSinceTimeAgoComponent</td>
      <td>Shows the number of exceptions over a specified period of time and the percentage increase over time.</td>
    </tr>
    <tr>
      <td>HighestControllerActionCountComponent</td>
      <td>Shows the controller endpoint which has caused the most authorization exceptions given the events passed in.</td>
    </tr>
    <tr>
      <td>TopTenUsersComponent</td>
      <td>Shows the top ten users in terms of who caused most authorization exceptions.</td>
    </tr>
    <tr>
      <td>UsersAffectedSinceTimeAgoComponent</td>
      <td>Shows the number of users affected over a given time period.</td>
    </tr>
  </tbody>
</table>

## Development

After checking out the repo, run `bin/setup` to install dependencies. 

Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/harled/monocle. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

### Contribution Steps:

Want to help us out? Here are some steps to make sure you are contributing

1. Find an issue you like, or create a new issue here
Please ask for any questions or clarifications in the associated issues or in new issues! 🤔
2. Assign yourself to the issue and create a branch , following GitHub Issue's naming scheme. 🛠️
The naming scheme should follow (#issueNumber-issue-name) ie. (#10-create-new-component)
3. Get on your local machine and ensure you have the repo cloned. Checkout the branch you just made with git checkout branch-name and pull the latest merged changes from the repo with git pull origin main to make sure you have the most up-to-date code from the repo. 👩‍💻
4. Add your amazing changes along with any documentation you feel would be useful. Then commit and push your changes. 🌟
5. Go back to the repo on GitHub and create a pull request! Then wait for an admin of the repo to get back to your pull request, address any comments and once you are finally approved, merge your code into Monocle! 🎉

If you want some more tips on contributing to GitHub projects, check out this resource from Data School.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Monocle project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/harled/monocle/blob/main/CODE_OF_CONDUCT.md).
