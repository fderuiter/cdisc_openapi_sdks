-module(openapi_adam_datastructure_varsets).

-include("openapi.hrl").

-export([openapi_adam_datastructure_varsets/0]).

-export([openapi_adam_datastructure_varsets/1]).

-export_type([openapi_adam_datastructure_varsets/0]).

-type openapi_adam_datastructure_varsets() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'class', binary() }
  | {'_links', openapi_adam_datastructure_varsets_links:openapi_adam_datastructure_varsets_links() }
  ].


openapi_adam_datastructure_varsets() ->
    openapi_adam_datastructure_varsets([]).

openapi_adam_datastructure_varsets(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'class', binary() }
            , {'_links', openapi_adam_datastructure_varsets_links:openapi_adam_datastructure_varsets_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

