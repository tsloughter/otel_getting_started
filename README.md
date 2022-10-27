otel_getting_started
=====

# With Honeycomb

``` shell
$ OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=https://api.honeycomb.io:443 OTEL_EXPORTER_OTLP_PROTOCOL=grpc OTEL_EXPORTER_OTLP_TRACES_HEADERS=x-honeycomb-team=<HONEYCOMB API TOKEN>,x-honeycomb-dataset=experiments rebar3 shell

...
===> Booted grpcbox
===> Booted opentelemetry_api
===> Booted opentelemetry
===> Booted opentelemetry_exporter
===> Booted otel_getting_started
...

1> otel_getting_started:hello().
true
```

# With Splunk

```shell
$ OTEL_EXPORTER_OTLP_ENDPOINT=https://ingest.<SPLUNK REALM>.signalfx.com OTEL_EXPORTER_OTLP_PROTOCOL=grpc OTEL_EXPORTER_OTLP_TRACES_HEADERS=x-sf-token=<SPLUNK ACCESS TOKEN> rebar3 shell --sname test@chommers

...
===> Booted grpcbox
===> Booted opentelemetry_api
===> Booted opentelemetry
===> Booted opentelemetry_exporter
===> Booted otel_getting_started
...

1> otel_getting_started:hello().
true
````
