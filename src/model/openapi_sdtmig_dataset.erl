-module(openapi_sdtmig_dataset).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset/0]).

-export([openapi_sdtmig_dataset/1]).

-export_type([openapi_sdtmig_dataset/0]).

-type openapi_sdtmig_dataset() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'datasetStructure', binary() }
  | {'_links', openapi_sdtmig_dataset_links:openapi_sdtmig_dataset_links() }
  | {'datasetVariables', list(openapi_sdtmig_dataset_variable:openapi_sdtmig_dataset_variable()) }
  ].


openapi_sdtmig_dataset() ->
    openapi_sdtmig_dataset([]).

openapi_sdtmig_dataset(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'datasetStructure', binary() }
            , {'_links', openapi_sdtmig_dataset_links:openapi_sdtmig_dataset_links() }
            , {'datasetVariables', list(openapi_sdtmig_dataset_variable:openapi_sdtmig_dataset_variable()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

