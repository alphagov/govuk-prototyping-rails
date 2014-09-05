# GOV.UK Rails Prototyping kit

A lightweight rails prototyping kit for pages GOV.UK, not including services.

## Installing

Clone the repo, switch into the directory and install dependencies with:

```
bundle install
```

## Running

```
bundle exec rails s
```

## Why another prototyping kit?

Most are node, which can't make use of shared templates and GOV.UK components
that require Ruby.

Theres an existing Rails prototyping kit, but tends to use fixed local assets
that have to be manually kept in sync with live GOV.UK. It's also a larger app
and can be difficult to install.

## Aims

* Easy to keep up to date with live GOV.UK styles
* Make use of GOV.UK Components
* Easy to install and run
* Small codebase thats understandable and extendable


## Todo

4. Setup default route, introduction, docs
5. Include slimmer and GOV.UK styling
6. Document running against Static (default, and local)
6. Setup simple prototyping routes
7. Build short terxt format prototype
