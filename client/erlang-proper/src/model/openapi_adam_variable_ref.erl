-module(openapi_adam_variable_ref).

-include("openapi.hrl").

-export([openapi_adam_variable_ref/0]).

-export([openapi_adam_variable_ref/1]).

-export_type([openapi_adam_variable_ref/0]).

-type openapi_adam_variable_ref() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_adam_variable_ref() ->
    openapi_adam_variable_ref([]).

openapi_adam_variable_ref(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

