# TODO LIST

### Requirement
- Git
- Ruby
- Rails
- postgresql

##### Clone this repository:
```bash
git clone https://github.com/CiceroRegis/TODO-LIST.git
```

##### go into the directory:
```bash
cd todo
```

#### DB Config
```
POSTGRESQS_USER: '[your_postgresql_db_username]'
POSTGRESQL_PASSWORD: '[your_postgresql_db_password]'
POSTGRESQL_HOST: '127.0.0.1'
```

## Instalation

First make sure you have `ruby` and the `gem bundler` installed. Also make sure you have `Postgresql` installed.

### Mandatory steps
*  Run `bundle install`

## Getting Started
In your CLI:
- Run `rake db:migrate` to run Database migrations.
- Start rails server using `rails s` or `rails server`
- Open up your browser and hit `localhost:3000`