-module(openapi_adam_varset).

-include("openapi.hrl").

-export([openapi_adam_varset/0]).

-export([openapi_adam_varset/1]).

-export_type([openapi_adam_varset/0]).

-type openapi_adam_varset() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_adam_varset_links:openapi_adam_varset_links() }
  | {'analysisVariables', list(openapi_adam_variable:openapi_adam_variable()) }
  ].


openapi_adam_varset() ->
    openapi_adam_varset([]).

openapi_adam_varset(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_adam_varset_links:openapi_adam_varset_links() }
            , {'analysisVariables', list(openapi_adam_variable:openapi_adam_variable()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

