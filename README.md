# Hobbby Tracker

Hobby Tracker is a single page application that helps you keep track of your hobbies. It allows you to view how much time you are spending on each hobby allowing you to organize the time you spend on activities.

This app was developed using the rails framework. If you would like to learn more about rails, please visit https://rubyonrails.org/.

## Installation

To get started first, fork and clone this repo. Also fork and clone [the backend rails api repo](https://github.com/Ejguzman3988/hobby-api).

And then execute:

    $ cd hobby-api
    $ bundle install

To test run **rails s** in the console

    $ rails s
    => Booting Puma
    => Rails 6.0.3.2 application starting in development
    => Run `rails server --help` for more startup options
    Puma starting in single mode...
    Version 4.3.5 (ruby 2.6.1-p33), codename: Mysterious Traveller
    Min threads: 5, max threads: 5
    Environment: development
    Listening on tcp://127.0.0.1:3001
    Listening on tcp://[::1]:3001
    Use Ctrl-C to stop

This will run your rails api backend server.

## Usage

After starting your server use the homepage at [localhost:3001](http://localhost:3001) to navigate through the webpage and view the backend API in json.

Next open a separate terminal the execute:

    $ cd hobby-client
    $ npm install
    $ npm start

This will open up the index html file and get your development environment started.

Sample video below:

[YouTube Demo](https://www.youtube.com/watch?v=yBfIPyZwJFs)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ejguzman3988/hobby-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Ejguzman3988/hobby-client/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Bankroll Management project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Ejguzman3988/hobby-client/blob/master/CODE_OF_CONDUCT.md).
