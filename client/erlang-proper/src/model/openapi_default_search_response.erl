-module(openapi_default_search_response).

-include("openapi.hrl").

-export([openapi_default_search_response/0]).

-export([openapi_default_search_response/1]).

-export_type([openapi_default_search_response/0]).

-type openapi_default_search_response() ::
  [ {'hits', list(openapi_default_search_response_hits_inner:openapi_default_search_response_hits_inner()) }
  | {'totalHits', integer() }
  ].


openapi_default_search_response() ->
    openapi_default_search_response([]).

openapi_default_search_response(Fields) ->
  Default = [ {'hits', list(openapi_default_search_response_hits_inner:openapi_default_search_response_hits_inner()) }
            , {'totalHits', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

