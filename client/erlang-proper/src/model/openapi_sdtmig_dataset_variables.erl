-module(openapi_sdtmig_dataset_variables).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset_variables/0]).

-export([openapi_sdtmig_dataset_variables/1]).

-export_type([openapi_sdtmig_dataset_variables/0]).

-type openapi_sdtmig_dataset_variables() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'datasetStructure', binary() }
  | {'_links', openapi_sdtmig_dataset_variables_links:openapi_sdtmig_dataset_variables_links() }
  ].


openapi_sdtmig_dataset_variables() ->
    openapi_sdtmig_dataset_variables([]).

openapi_sdtmig_dataset_variables(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'datasetStructure', binary() }
            , {'_links', openapi_sdtmig_dataset_variables_links:openapi_sdtmig_dataset_variables_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

