# Rails Devise Project

![Ruby on Rails][ruby-on-rails]
![Bootstrap][boostrap]
[![GitHub repo size][github-img]][github-url]
[![GitHub last commit][github-commit]][github-url]

__A Ruby on Rails application with Devise authentication.__

## Services

This project provides a `docker-compose.yml` file containing **PostgreSQL**, **pgAdmin**, and **MailCatcher**.

* **PostgreSQL** and **pgAdmin:** Used exclusively to simulate the production environment setup locally.
* **MailCatcher:** Used during development to catch outbound transactional emails (such as password recovery).

## Getting Started

Clone or download zip file:

```bash
git clone https://github.com/GuilhermeCCunha/rails_devise_project.git
```

To run this project, you must have the specific versions of **Ruby** and **Rails** installed as defined in the `Gemfile`.

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

### 📬 MailCatcher (Optional)
Use MailCatcher from Docker Compose to intercept and view application emails locally via a web interface.

1. Start the service in the background:
   ```bash
   docker compose up -d mailcatcher
   ```
   *(The `-d` flag runs the service in the background, keeping your terminal free).*
2. Verify that `config/environments/development.rb` has `delivery_method` set to `:smtp`, `smtp_settings` port to `1025`, and `default_url_options` matching your Rails app port (e.g., `3000`, `3001`, or `3002`).
3. Trigger a password recovery email and view it at **`http://localhost:1080`**.

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

[github-img]: https://img.shields.io/github/repo-size/GuilhermeCCunha/rails_devise_project?logo=github&style=flat-square
[github-url]: https://github.com/GuilhermeCCunha/rails_devise_project
[github-commit]: https://img.shields.io/github/last-commit/GuilhermeCCunha/rails_devise_project?logo=github&style=flat-square
[ruby-on-rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white&style=flat-square
[boostrap]: https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white&style=flat-square

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
