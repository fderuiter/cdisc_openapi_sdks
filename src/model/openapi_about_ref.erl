-module(openapi_about_ref).

-include("openapi.hrl").

-export([openapi_about_ref/0]).

-export([openapi_about_ref/1]).

-export_type([openapi_about_ref/0]).

-type openapi_about_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_about_ref() ->
    openapi_about_ref([]).

openapi_about_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

