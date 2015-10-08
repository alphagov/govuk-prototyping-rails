# GOV.UK Rails Prototyping kit

A lightweight rails prototyping kit for pages GOV.UK, not including services.

## Installing

Clone the repo, switch into the directory and install dependencies with:

```
bundle install
```

## Running

```
./startup.sh
```

### Running offline

This app uses the public version of `static` for shared layouts and components, which
means you need to be online to use it. If you want to run offline, see "[Using a different version of static](docs/docs/using-a-different-static.md)".

### How to...

This app should Just Work™ for the common use cases, but if you want to do something
slightly unusual these guides should help.

- [Use a different version of static](docs/using-a-different-static.md)
- [Use dummy content store](docs/using-dummy-content-store.md)

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
