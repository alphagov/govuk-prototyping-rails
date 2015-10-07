# Using a different static

`static` is a GOV.UK application that provides layouts and GOV.UK Components.

By default the prototyping app using the public version of `static`, hosted at `assets.digital.cabinet-office.gov.uk`. The same host used by production GOV.UK apps.

If you want work offline, or run the prototype app against your own changes to `static` then you'll need to run a local copy of static.

The [static README](https://github.com/alphagov/static) has detailed installation instructions, but the short version is:

````
$ git clone git@github.com:alphagov/static.git
$ cd static
$ bundle
$ PLEK_SERVICE_STATIC_URI=http://0.0.0.0:3013 ./startup.sh
```

Then run the prototyping app with:

```
$ PLEK_SERVICE_STATIC_URI=http://0.0.0.0:3013 ./startup.sh
```
