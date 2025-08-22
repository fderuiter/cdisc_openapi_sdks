-module(openapi_adam_datastructure_variables).

-include("openapi.hrl").

-export([openapi_adam_datastructure_variables/0]).

-export([openapi_adam_datastructure_variables/1]).

-export_type([openapi_adam_datastructure_variables/0]).

-type openapi_adam_datastructure_variables() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'class', binary() }
  | {'_links', openapi_adam_datastructure_variables_links:openapi_adam_datastructure_variables_links() }
  ].


openapi_adam_datastructure_variables() ->
    openapi_adam_datastructure_variables([]).

openapi_adam_datastructure_variables(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'class', binary() }
            , {'_links', openapi_adam_datastructure_variables_links:openapi_adam_datastructure_variables_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

