-module(openapi_sendig_dataset_variable).

-include("openapi.hrl").

-export([openapi_sendig_dataset_variable/0]).

-export([openapi_sendig_dataset_variable/1]).

-export_type([openapi_sendig_dataset_variable/0]).

-type openapi_sendig_dataset_variable() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'role', binary() }
  | {'simpleDatatype', binary() }
  | {'core', binary() }
  | {'describedValueDomain', binary() }
  | {'valueList', list(binary()) }
  | {'_links', openapi_sendig_dataset_variable_links:openapi_sendig_dataset_variable_links() }
  ].


openapi_sendig_dataset_variable() ->
    openapi_sendig_dataset_variable([]).

openapi_sendig_dataset_variable(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'role', binary() }
            , {'simpleDatatype', binary() }
            , {'core', binary() }
            , {'describedValueDomain', binary() }
            , {'valueList', list(binary()) }
            , {'_links', openapi_sendig_dataset_variable_links:openapi_sendig_dataset_variable_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

