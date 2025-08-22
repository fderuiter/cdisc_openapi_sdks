-module(openapi_default_search_response_hits_inner).

-include("openapi.hrl").

-export([openapi_default_search_response_hits_inner/0]).

-export([openapi_default_search_response_hits_inner/1]).

-export_type([openapi_default_search_response_hits_inner/0]).

-type openapi_default_search_response_hits_inner() ::
  [ {'href', binary() }
  | {'type', binary() }
  ].


openapi_default_search_response_hits_inner() ->
    openapi_default_search_response_hits_inner([]).

openapi_default_search_response_hits_inner(Fields) ->
  Default = [ {'href', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

