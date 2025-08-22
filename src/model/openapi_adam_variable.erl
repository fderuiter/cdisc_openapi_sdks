-module(openapi_adam_variable).

-include("openapi.hrl").

-export([openapi_adam_variable/0]).

-export([openapi_adam_variable/1]).

-export_type([openapi_adam_variable/0]).

-type openapi_adam_variable() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'core', binary() }
  | {'simpleDatatype', binary() }
  | {'describedValueDomain', binary() }
  | {'valueList', list(binary()) }
  | {'_links', openapi_adam_variable_links:openapi_adam_variable_links() }
  ].


openapi_adam_variable() ->
    openapi_adam_variable([]).

openapi_adam_variable(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'core', binary() }
            , {'simpleDatatype', binary() }
            , {'describedValueDomain', binary() }
            , {'valueList', list(binary()) }
            , {'_links', openapi_adam_variable_links:openapi_adam_variable_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

