-module(openapi_sendig_dataset_variables_links).

-include("openapi.hrl").

-export([openapi_sendig_dataset_variables_links/0]).

-export([openapi_sendig_dataset_variables_links/1]).

-export_type([openapi_sendig_dataset_variables_links/0]).

-type openapi_sendig_dataset_variables_links() ::
  [ {'self', openapi_sendig_dataset_variables_ref:openapi_sendig_dataset_variables_ref() }
  | {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  | {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
  | {'parentClass', openapi_sendig_class_ref:openapi_sendig_class_ref() }
  | {'priorVersion', openapi_sendig_dataset_variables_ref:openapi_sendig_dataset_variables_ref() }
  | {'datasetVariables', list(openapi_sendig_dataset_variable_ref_element:openapi_sendig_dataset_variable_ref_element()) }
  ].


openapi_sendig_dataset_variables_links() ->
    openapi_sendig_dataset_variables_links([]).

openapi_sendig_dataset_variables_links(Fields) ->
  Default = [ {'self', openapi_sendig_dataset_variables_ref:openapi_sendig_dataset_variables_ref() }
            , {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            , {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
            , {'parentClass', openapi_sendig_class_ref:openapi_sendig_class_ref() }
            , {'priorVersion', openapi_sendig_dataset_variables_ref:openapi_sendig_dataset_variables_ref() }
            , {'datasetVariables', list(openapi_sendig_dataset_variable_ref_element:openapi_sendig_dataset_variable_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

