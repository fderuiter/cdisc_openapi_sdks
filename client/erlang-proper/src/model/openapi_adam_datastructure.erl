-module(openapi_adam_datastructure).

-include("openapi.hrl").

-export([openapi_adam_datastructure/0]).

-export([openapi_adam_datastructure/1]).

-export_type([openapi_adam_datastructure/0]).

-type openapi_adam_datastructure() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'class', binary() }
  | {'_links', openapi_adam_datastructure_links:openapi_adam_datastructure_links() }
  | {'analysisVariableSets', list(openapi_adam_varset:openapi_adam_varset()) }
  ].


openapi_adam_datastructure() ->
    openapi_adam_datastructure([]).

openapi_adam_datastructure(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'class', binary() }
            , {'_links', openapi_adam_datastructure_links:openapi_adam_datastructure_links() }
            , {'analysisVariableSets', list(openapi_adam_varset:openapi_adam_varset()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

