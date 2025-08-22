-module(openapi_qrs_responses).

-include("openapi.hrl").

-export([openapi_qrs_responses/0]).

-export([openapi_qrs_responses/1]).

-export_type([openapi_qrs_responses/0]).

-type openapi_qrs_responses() ::
  [ {'ordinal', binary() }
  | {'_links', openapi_qrs_response_links:openapi_qrs_response_links() }
  ].


openapi_qrs_responses() ->
    openapi_qrs_responses([]).

openapi_qrs_responses(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'_links', openapi_qrs_response_links:openapi_qrs_response_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

