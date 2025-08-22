-module(openapi_default_error_response).

-include("openapi.hrl").

-export([openapi_default_error_response/0]).

-export([openapi_default_error_response/1]).

-export_type([openapi_default_error_response/0]).

-type openapi_default_error_response() ::
  [ {'statusCode', binary() }
  | {'reasonPhrase', binary() }
  | {'userMessage', binary() }
  | {'adminMessage', binary() }
  ].


openapi_default_error_response() ->
    openapi_default_error_response([]).

openapi_default_error_response(Fields) ->
  Default = [ {'statusCode', binary() }
            , {'reasonPhrase', binary() }
            , {'userMessage', binary() }
            , {'adminMessage', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

