otel_getting_started
=====

# Local Collector over GRPC

```shell
$ OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4317 OTEL_EXPORTER_OTLP_TRACES_PROTOCOL=grpc rebar3 shell
```

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
