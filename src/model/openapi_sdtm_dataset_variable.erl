-module(openapi_sdtm_dataset_variable).

-include("openapi.hrl").

-export([openapi_sdtm_dataset_variable/0]).

-export([openapi_sdtm_dataset_variable/1]).

-export_type([openapi_sdtm_dataset_variable/0]).

-type openapi_sdtm_dataset_variable() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'role', binary() }
  | {'roleDescription', binary() }
  | {'simpleDatatype', binary() }
  | {'describedValueDomain', binary() }
  | {'_links', openapi_sdtm_dataset_variable_links:openapi_sdtm_dataset_variable_links() }
  ].


openapi_sdtm_dataset_variable() ->
    openapi_sdtm_dataset_variable([]).

openapi_sdtm_dataset_variable(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'role', binary() }
            , {'roleDescription', binary() }
            , {'simpleDatatype', binary() }
            , {'describedValueDomain', binary() }
            , {'_links', openapi_sdtm_dataset_variable_links:openapi_sdtm_dataset_variable_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

