-module(openapi_scope_values).

-include("openapi.hrl").

-export([openapi_scope_values/0]).

-export([openapi_scope_values/1]).

-export_type([openapi_scope_values/0]).

-type openapi_scope_values() ::
  [ {'total', integer() }
  | {'hasMore', boolean() }
  | {'values', list(binary()) }
  ].


openapi_scope_values() ->
    openapi_scope_values([]).

openapi_scope_values(Fields) ->
  Default = [ {'total', integer() }
            , {'hasMore', boolean() }
            , {'values', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

