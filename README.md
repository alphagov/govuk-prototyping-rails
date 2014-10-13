# GOV.UK Rails Prototyping kit

A lightweight rails prototyping kit for pages GOV.UK, not including services.

## Installing

Clone the repo, switch into the directory and install dependencies with:

```
bundle install
```

## Running

This app needs to fetch templates from an instance of [alphagov/static](https://github.com/alphagov/static).

If you use the startup script it will run the rails server and default to the live/production version of static used by GOV.UK:

```
./startup.sh
```

### Using a different static

Or to run against a local verison of static, switch `PLEK_SERVICE_STATIC_URI` to the
the host of local instance, usually something like:

```
PLEK_SERVICE_STATIC_URI=0.0.0.0:3013 bundle exec rails s
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

6. Setup simple prototyping routes
7. Build short text format prototype
8. Document prototyping usage
