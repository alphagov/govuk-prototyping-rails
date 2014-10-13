# Default to live static on GOV.UK, but still allow custom value if set
if [ -z "$PLEK_SERVICE_STATIC_URI" ]; then
    PLEK_SERVICE_STATIC_URI="assets.digital.cabinet-office.gov.uk"
fi

bundle exec rails s
