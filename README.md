# Rails Devise Project
🌏
English |
[**Português**][readme-pt-br]

![Ruby on Rails][ruby-on-rails]
![Bootstrap][boostrap]
[![GitHub repo size][github-img]][github-url]
[![GitHub last commit][github-commit]][github-url]

__A Ruby on Rails application with Devise authentication.__

## Table of contents

* [Services](#services)
* [Features](#features)
* [Demonstration](#demonstration)
  * [Changing Language](#changing-language)
  * [Signing In as User](#signing-in-as-user)
  * [Signing In as Admin](#signing-in-as-admin)
  * [Banning a User](#banning-a-user)
  * [Viewing Emails (Development)](#viewing-emails-development)
* [Getting Started](#getting-started)
* [Development server](#development-server)
  * [📬 MailCatcher (Optional)](#-mailcatcher-optional)
* [Production server](#production-server)
* [Author](#author)
* [Show your support](#show-your-support)
* [License](#license)

## Services

This project provides a `docker-compose.yml` file containing **PostgreSQL**, **pgAdmin**, and **MailCatcher**.

* **PostgreSQL** and **pgAdmin:** Used exclusively to simulate the production environment setup locally.
* **MailCatcher:** Used during development to catch outbound transactional emails (such as password recovery).

## Features

- Multi-scope authentication (Users/Admins) via Devise
- Multi-language UI with a built-in language selector (i18n)
- Admin dashboard to manage, ban, and unban users
- Responsive layout using Bootstrap
- Local email catching via MailCatcher

## Demonstration

### Changing Language

![rails_devise_project_language_selector](https://github.com/user-attachments/assets/6ffa663e-1b88-49e1-a72f-be334207cc41)

### Signing In as User

![rails_devise_project_sign_in_as_user](https://github.com/user-attachments/assets/3a760391-a144-4d29-bad8-83c1628c7d41)

### Signing In as Admin

The application restricts the system to a maximum of **5 admin accounts** by default. This setting can be customized in `app/models/admin.rb`.

![rails_devise_project_sign_in_as_admin](https://github.com/user-attachments/assets/d2d0d7b1-0ae6-4363-b725-a13f254a4cde)

### Banning a User

![rails_devise_project_ban_user](https://github.com/user-attachments/assets/f303af18-21b9-4cff-8402-95fed8c67c92)

### Viewing Emails (Development)

![rails_devise_project_mailcatcher](https://github.com/user-attachments/assets/7706ac9e-5ceb-419b-b529-3d59fb15aaab)

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

Start the Postgres and pgAdmin containers via Docker with:

```bash
docker compose up
```
*(Optional: add `-d` to run in the background, like `docker compose up -d`)*

* **Database Name:** `rails_devise_project_production`
* **pgAdmin Web UI:** [http://localhost:8081](http://localhost:8081)
* **Login Credentials:** `admin@root.com` | **Password:** `root`
* **Notice:** Mailcatcher is not configured for the production environment.

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

Precompile the project assets with:

```bash
RAILS_ENV=production rails assets:precompile
```

Setup the production database by running:

```bash
RAILS_ENV=production rails db:create db:migrate
```

To start a local production server, run:

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

[readme-pt-br]: https://github.com/GuilhermeCCunha/rails_devise_project/blob/main/README.pt-br.md
[github-img]: https://img.shields.io/github/repo-size/GuilhermeCCunha/rails_devise_project?logo=github&style=flat-square
[github-url]: https://github.com/GuilhermeCCunha/rails_devise_project
[github-commit]: https://img.shields.io/github/last-commit/GuilhermeCCunha/rails_devise_project?logo=github&style=flat-square
[ruby-on-rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white&style=flat-square
[boostrap]: https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white&style=flat-square
