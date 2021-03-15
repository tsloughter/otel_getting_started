%%%-------------------------------------------------------------------
%% @doc otel_getting_started public API
%% @end
%%%-------------------------------------------------------------------

-module(otel_getting_started_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    otel_getting_started_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
