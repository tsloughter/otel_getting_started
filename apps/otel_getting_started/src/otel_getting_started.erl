-module(otel_getting_started).

-export([hello/0]).

-include_lib("kernel/include/logger.hrl").
-include_lib("opentelemetry_api/include/otel_tracer.hrl").

hello() ->
    %% start an active span and run a local function
    ?with_span(<<"operation">>, #{}, fun nice_operation/1).

nice_operation(_SpanCtx) ->
    ?add_event(<<"Nice operation!">>, [{<<"bogons">>, 100}]),
    ?set_attributes([{another_key, <<"yes">>}]),

    ?LOG_ERROR("GOT AN ERROR!"),

    %% start an active span and run an anonymous function
    ?with_span(<<"Sub operation...">>, #{},
               fun(_ChildSpanCtx) ->
                       ?set_attributes([{lemons_key, <<"five">>}]),
                       ?add_event(<<"Sub span event!">>, [])
               end).
