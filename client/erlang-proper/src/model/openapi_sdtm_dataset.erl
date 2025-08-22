-module(openapi_sdtm_dataset).

-include("openapi.hrl").

-export([openapi_sdtm_dataset/0]).

-export([openapi_sdtm_dataset/1]).

-export_type([openapi_sdtm_dataset/0]).

-type openapi_sdtm_dataset() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'datasetStructure', binary() }
  | {'_links', openapi_sdtm_dataset_links:openapi_sdtm_dataset_links() }
  | {'datasetVariables', list(openapi_sdtm_dataset_variable:openapi_sdtm_dataset_variable()) }
  ].


openapi_sdtm_dataset() ->
    openapi_sdtm_dataset([]).

openapi_sdtm_dataset(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'datasetStructure', binary() }
            , {'_links', openapi_sdtm_dataset_links:openapi_sdtm_dataset_links() }
            , {'datasetVariables', list(openapi_sdtm_dataset_variable:openapi_sdtm_dataset_variable()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

