-module(openapi_sendig_dataset).

-include("openapi.hrl").

-export([openapi_sendig_dataset/0]).

-export([openapi_sendig_dataset/1]).

-export_type([openapi_sendig_dataset/0]).

-type openapi_sendig_dataset() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'datasetStructure', binary() }
  | {'_links', openapi_sendig_dataset_links:openapi_sendig_dataset_links() }
  | {'datasetVariables', list(openapi_sendig_dataset_variable:openapi_sendig_dataset_variable()) }
  ].


openapi_sendig_dataset() ->
    openapi_sendig_dataset([]).

openapi_sendig_dataset(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'datasetStructure', binary() }
            , {'_links', openapi_sendig_dataset_links:openapi_sendig_dataset_links() }
            , {'datasetVariables', list(openapi_sendig_dataset_variable:openapi_sendig_dataset_variable()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

