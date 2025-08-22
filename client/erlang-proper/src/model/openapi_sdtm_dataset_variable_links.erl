-module(openapi_sdtm_dataset_variable_links).

-include("openapi.hrl").

-export([openapi_sdtm_dataset_variable_links/0]).

-export([openapi_sdtm_dataset_variable_links/1]).

-export_type([openapi_sdtm_dataset_variable_links/0]).

-type openapi_sdtm_dataset_variable_links() ::
  [ {'self', openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref() }
  | {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'parentDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  | {'rootItem', openapi_root_sdtm_dataset_variable_ref:openapi_root_sdtm_dataset_variable_ref() }
  | {'priorVersion', openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref() }
  ].


openapi_sdtm_dataset_variable_links() ->
    openapi_sdtm_dataset_variable_links([]).

openapi_sdtm_dataset_variable_links(Fields) ->
  Default = [ {'self', openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref() }
            , {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'parentDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            , {'rootItem', openapi_root_sdtm_dataset_variable_ref:openapi_root_sdtm_dataset_variable_ref() }
            , {'priorVersion', openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

