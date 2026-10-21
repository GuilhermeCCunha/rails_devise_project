# Rails Devise Project
🌏
[**English**][readme-en] |
Português

![Ruby on Rails][ruby-on-rails]
![Bootstrap][boostrap]
[![GitHub repo size][github-img]][github-url]
[![GitHub last commit][github-commit]][github-url]

__Uma aplicação em Ruby on Rails que faz autenticação utilizando a biblioteca Devise.__

## Tabela de conteúdos

* [Serviços](#serviços)
* [Funcionalidades](#funcionalidades)
* [Demonstração](#demonstração)
  * [Trocando o Idioma](#trocando-o-idioma)
  * [Fazendo Login como Usuário](#fazendo-login-como-usuário)
  * [Fazendo Login como Admin](#fazendo-login-como-admin)
  * [Banindo um Usuário](#banindo-um-usuário)
  * [Visualizando E-mails (Desenvolvimento)](#visualizando-e-mails-desenvolvimento)
* [Começando](#começando)
* [Servidor de desenvolvimento](#servidor-de-desenvolvimento)
  * [📬 MailCatcher (Opcional)](#-mailcatcher-opcional)
* [Servidor de produção](#servidor-de-produção)
* [Autor](#autor)
* [Mostre seu apoio](#mostre-seu-apoio)
* [Licença](#licença)

## Serviços

Este projeto fornece um arquivo `docker-compose.yml` contendo **PostgreSQL**, **pgAdmin** e **MailCatcher**.

* **PostgreSQL** e **pgAdmin:** Utilizados exclusivamente para simular localmente a configuração do ambiente de produção.
* **MailCatcher:** Utilizado durante o desenvolvimento para capturar e-mails transacionais enviados (como recuperação de senha).

## Funcionalidades

- Autenticação de diferentes escopos (Usuários/Admins) via Devise
- Interface multilíngue com seletor de idioma integrado (i18n)
- Painel do admin para gerenciar, banir e desbanir usuários
- Layout responsivo utilizando Bootstrap
- Simulação local de envio de e-mails via MailCatcher

## Demonstração

### Trocando o Idioma

![rails_devise_project_language_selector](https://github.com/user-attachments/assets/6ffa663e-1b88-49e1-a72f-be334207cc41)

### Fazendo Login como Usuário

![rails_devise_project_sign_in_as_user](https://github.com/user-attachments/assets/3a760391-a144-4d29-bad8-83c1628c7d41)

### Fazendo Login como Admin

Por padrão, a aplicação restringe o sistema a um máximo de **5 contas de admin**. Essa configuração pode ser personalizada em `app/models/admin.rb`.

![rails_devise_project_sign_in_as_admin](https://github.com/user-attachments/assets/d2d0d7b1-0ae6-4363-b725-a13f254a4cde)

### Banindo um Usuário

![rails_devise_project_ban_user](https://github.com/user-attachments/assets/f303af18-21b9-4cff-8402-95fed8c67c92)

### Visualizando E-mails (Desenvolvimento)

![rails_devise_project_mailcatcher](https://github.com/user-attachments/assets/7706ac9e-5ceb-419b-b529-3d59fb15aaab)

## Começando

Clone o repositório ou faça o download do arquivo zip:

```bash
git clone https://github.com/GuilhermeCCunha/rails_devise_project.git
```

Para executar o projeto, é necessário ter instaladas as versões do **Ruby** e do **Rails** especificadas no `Gemfile`.

Instale as dependências do Ruby:

```bash
bundle install
```

Instale as dependências do JavaScript:

```bash
yarn install
```

## Servidor de desenvolvimento

Execute apenas se o banco de dados ainda não tiver sido criado:

```bash
rails db:prepare
# ou
rails db:create db:migrate
```

Para iniciar um servidor de desenvolvimento local, execute:

```bash
bin/dev
# ou
rails s
```

### 📬 MailCatcher (Opcional)

Utilize o MailCatcher do Docker Compose para interceptar e visualizar os e-mails da aplicação localmente por meio de uma interface web.

1. Inicie o serviço em segundo plano:
   ```bash
   docker compose up -d mailcatcher
   ```
   *(A flag `-d` executa o serviço em segundo plano, mantendo o seu terminal livre).*
2. Verifique se o arquivo `config/environments/development.rb` está com o `delivery_method` configurado como `:smtp`, a porta do `smtp_settings` definida como `1025` e o `default_url_options` correspondente à porta do seu app Rails (por exemplo, `3000`, `3001` ou `3002`).
3. Dispare um e-mail de recuperação de senha e visualize-o em **`http://localhost:1080`**.

## Servidor de produção

Inicie os containers do Postgres e pgAdmin via Docker com:

```bash
docker compose up
```
*(Opcional: adicione `-d` para executar em segundo plano, como `docker compose up -d`)*

* **Nome do Banco de Dados:** `rails_devise_project_production`
* **Interface Web do pgAdmin:** [http://localhost:8081](http://localhost:8081)
* **Credenciais de Login:** `admin@root.com` | **Senha:** `root`
* **Aviso:** O MailCatcher não está configurado para o ambiente de produção.

Exclua o arquivo de credenciais existente para evitar conflitos antes de gerar uma nova master key:

```bash
rm config/credentials.yml.enc
```

Isso gerará um novo arquivo `config/credentials.yml.enc` e o `config/master.key`. Às vezes, é necessário especificar o seu editor de texto para que isso funcione. Por exemplo:

```bash
# Utilizando o Vim
EDITOR=vim rails credentials:edit

# Utilizando o Nano
EDITOR=nano rails credentials:edit

# Utilizando o Neovim
EDITOR=nvim rails credentials:edit
```

Use o comando abaixo para pré-compilar o projeto:

```bash
RAILS_ENV=production rails assets:precompile
```

Configure o banco de dados de produção executando:

```bash
RAILS_ENV=production rails db:create db:migrate
```

Para iniciar um servidor de produção local, execute:

```bash
RAILS_ENV=production bin/dev
# ou
RAILS_ENV=production rails s
```

## Autor

- GitHub: [@GuilhermeCCunha](https://github.com/GuilhermeCCunha)

## Mostre seu apoio

Por favor, marque com ⭐️ este repositório se você gostou!

## Licença

Copyright © 2025 [Guilherme Cunha](https://github.com/GuilhermeCCunha).<br />
Este projeto está licenciado sob a licença [MIT](https://github.com/GuilhermeCCunha/rails_devise_project/blob/main/LICENSE).

[readme-en]: https://github.com/GuilhermeCCunha/rails_devise_project/blob/main/README.md
[github-img]: https://img.shields.io/github/repo-size/GuilhermeCCunha/rails_devise_project?logo=github&style=flat-square
[github-url]: https://github.com/GuilhermeCCunha/rails_devise_project
[github-commit]: https://img.shields.io/github/last-commit/GuilhermeCCunha/rails_devise_project?logo=github&style=flat-square
[ruby-on-rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white&style=flat-square
[boostrap]: https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white&style=flat-square
