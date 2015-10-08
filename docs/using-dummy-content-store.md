# Using a dummy content store

[`content-store`](https://github.com/alphagov/content-store) is "_The central storage of published content on GOV.UK._"

GOV.UK Frontend applications fetch their content from it.

It's not straightforward to run `content-store` locally, and you would need a copy of it's database, in addition to the code.

Instead you can run the a fake version of `content-store` that has [examples](https://github.com/alphagov/govuk-content-schemas/blob/master/formats/case_study/frontend/examples/case_study.json) of common formats. To do this:

```
git clone git@github.com:alphagov/govuk-content-schemas.git
cd govuk-content-schemas
bundle
dummy_content_store
```

Then run the prototype application with:

```
PLEK_SERVICE_CONTENT_STORE_URI=http://0.0.0.0:3068 ./startup.sh
```


