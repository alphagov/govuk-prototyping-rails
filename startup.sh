# Default to live static on GOV.UK, but still allow custom value if set

if [ "$LOCAL_STATIC" ]; then
    export PLEK_SERVICE_STATIC_URI="http://0.0.0.0:3013"
elif [ -z "$PLEK_SERVICE_STATIC_URI" ]; then
    export PLEK_SERVICE_STATIC_URI="http://assets.digital.cabinet-office.gov.uk"
fi

if [ "$LOCAL_CONTENT_STORE" ]; then
    export PLEK_SERVICE_CONTENT_STORE_URI="http://0.0.0.0:3068"
elif [ -z "$PLEK_SERVICE_CONTENT_STORE_URI" ]; then
    export PLEK_SERVICE_CONTENT_STORE_URI="https://govuk-content-store-examples.herokuapp.com"
fi

bundle exec rails s
