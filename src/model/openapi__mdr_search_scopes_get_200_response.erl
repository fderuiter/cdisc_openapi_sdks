-module(openapi__mdr_search_scopes_get_200_response).

-include("openapi.hrl").

-export([openapi__mdr_search_scopes_get_200_response/0]).

-export([openapi__mdr_search_scopes_get_200_response/1]).

-export_type([openapi__mdr_search_scopes_get_200_response/0]).

-type openapi__mdr_search_scopes_get_200_response() ::
  [ {'scopes', list(openapi_default_search_scopes:openapi_default_search_scopes()) }
  ].


openapi__mdr_search_scopes_get_200_response() ->
    openapi__mdr_search_scopes_get_200_response([]).

openapi__mdr_search_scopes_get_200_response(Fields) ->
  Default = [ {'scopes', list(openapi_default_search_scopes:openapi_default_search_scopes()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

