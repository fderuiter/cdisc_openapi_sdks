-module(openapi_sdtmig_dataset_variables_links).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset_variables_links/0]).

-export([openapi_sdtmig_dataset_variables_links/1]).

-export_type([openapi_sdtmig_dataset_variables_links/0]).

-type openapi_sdtmig_dataset_variables_links() ::
  [ {'self', openapi_sdtmig_dataset_variables_ref:openapi_sdtmig_dataset_variables_ref() }
  | {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  | {'parentProduct', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
  | {'parentClass', openapi_sdtmig_class_ref:openapi_sdtmig_class_ref() }
  | {'priorVersion', openapi_sdtmig_dataset_variables_ref:openapi_sdtmig_dataset_variables_ref() }
  | {'datasetVariables', list(openapi_sdtmig_dataset_variable_ref_element:openapi_sdtmig_dataset_variable_ref_element()) }
  ].


openapi_sdtmig_dataset_variables_links() ->
    openapi_sdtmig_dataset_variables_links([]).

openapi_sdtmig_dataset_variables_links(Fields) ->
  Default = [ {'self', openapi_sdtmig_dataset_variables_ref:openapi_sdtmig_dataset_variables_ref() }
            , {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            , {'parentProduct', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
            , {'parentClass', openapi_sdtmig_class_ref:openapi_sdtmig_class_ref() }
            , {'priorVersion', openapi_sdtmig_dataset_variables_ref:openapi_sdtmig_dataset_variables_ref() }
            , {'datasetVariables', list(openapi_sdtmig_dataset_variable_ref_element:openapi_sdtmig_dataset_variable_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

