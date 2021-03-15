otel_getting_started
=====

# With Honeycomb

(Note: this currently fails because of a timeout during export)

``` shell
OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=https://api.honeycomb.io:443
OTEL_EXPORTER_OTLP_TRACES_HEADERS=x-honeycomb-team=<HONEYCOMB API
TOKEN>,x-honeycomb-dataset=something rebar3 shell

> otel_getting_started:hello().
```
