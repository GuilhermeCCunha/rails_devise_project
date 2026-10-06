# Rails Devise Project

__A Ruby on Rails application with Devise authentication.__

## Getting Started

Clone or download zip file:

```bash
git clone https://github.com/GuilhermeCCunha/rails_devise_project.git
```

Install Ruby Dependencies:

```bash
bundle install
```

Install JavaScript Dependencies:

```bash
yarn install
```

## Development server

Only if the database has not been created yet, run:

```bash
rails db:prepare
# or
rails db:create db:migrate
```

To start a local development server, run:

```bash
bin/dev
# or
rails s
```

## Production server

You must delete the existing credentials file to prevent conflicts before generating a new master key:

```bash
rm config/credentials.yml.enc
```

This will generate a new `config/credentials.yml.enc` file and `config/master.key`. Sometimes, you need to specify your text editor for this to work. For example:

```bash
# Using Vim
EDITOR=vim rails credentials:edit

# Using Nano
EDITOR=nano rails credentials:edit

# Using Neovim
EDITOR=nvim rails credentials:edit
```

```bash
RAILS_ENV=production bin/dev
# or
RAILS_ENV=production rails s
```

## Author

- GitHub: [@GuilhermeCCunha](https://github.com/GuilhermeCCunha)

## Show your support

Please ⭐️ this repository if you liked it!

## License

Copyright © 2025 [Guilherme Cunha](https://github.com/GuilhermeCCunha).<br />
This project is [MIT](https://github.com/GuilhermeCCunha/rails_devise_project/blob/main/LICENSE) licensed.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
