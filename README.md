# 🧐 Monocle

🤵‍♀️🤵 Using Pundit as a User Experience (UX) tool 🤵🤵‍♀️

A suite of [ViewComponents](https://github.com/github/view_component) for plug and play use right from your [Pundit](https://github.com/varvet/pundit) exception data! Pundit is a popular authorization framework for Rails applications, but it has a hidden talent, UX! Moncale sits on Pundit's eye and provides insights of broken flows in your app leading to unauthorized responses.

This gem includes components for the following reports: **Add completed components here**
- Issue: https://github.com/harled/monocle/issues/1
- Issue: https://github.com/harled/monocle/issues/2
- Issue: https://github.com/harled/monocle/issues/5

This gem assumes:
- Data passed in is an ActiveRecordRelation queryable by
  - The time the exception occurred: `created_at: datetime`
  - The name of the controller in which the exception was called: `controller_name: string`
  - The name of the unauthorized action: `action_name: string`
- Bootstrap 5.1 is loaded in your project
  - It will work without Bootstrap, however, you will need to provide your own custom styling for several Bootstrap classes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'monocle', github: 'harled/monocle', branch: 'main'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install monocle

## Usage

TODO: Write usage instructions (https://github.com/harled/monocle/issues/6) here

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

Everyone interacting in the Monocle project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/monocle/blob/master/CODE_OF_CONDUCT.md).
