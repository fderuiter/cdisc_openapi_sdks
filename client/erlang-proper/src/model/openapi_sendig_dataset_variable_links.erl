-module(openapi_sendig_dataset_variable_links).

-include("openapi.hrl").

-export([openapi_sendig_dataset_variable_links/0]).

-export([openapi_sendig_dataset_variable_links/1]).

-export_type([openapi_sendig_dataset_variable_links/0]).

-type openapi_sendig_dataset_variable_links() ::
  [ {'self', openapi_sendig_dataset_variable_ref:openapi_sendig_dataset_variable_ref() }
  | {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
  | {'modelClassVariable', openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref() }
  | {'modelDatasetVariable', openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref() }
  | {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
  | {'parentDataset', openapi_sendig_dataset_ref:openapi_sendig_dataset_ref() }
  | {'rootItem', openapi_root_sendig_dataset_variable_ref:openapi_root_sendig_dataset_variable_ref() }
  | {'priorVersion', openapi_sendig_dataset_variable_ref:openapi_sendig_dataset_variable_ref() }
  ].


openapi_sendig_dataset_variable_links() ->
    openapi_sendig_dataset_variable_links([]).

openapi_sendig_dataset_variable_links(Fields) ->
  Default = [ {'self', openapi_sendig_dataset_variable_ref:openapi_sendig_dataset_variable_ref() }
            , {'codelist', list(openapi_root_ct_codelist_ref_element:openapi_root_ct_codelist_ref_element()) }
            , {'modelClassVariable', openapi_sdtm_class_variable_ref:openapi_sdtm_class_variable_ref() }
            , {'modelDatasetVariable', openapi_sdtm_dataset_variable_ref:openapi_sdtm_dataset_variable_ref() }
            , {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
            , {'parentDataset', openapi_sendig_dataset_ref:openapi_sendig_dataset_ref() }
            , {'rootItem', openapi_root_sendig_dataset_variable_ref:openapi_root_sendig_dataset_variable_ref() }
            , {'priorVersion', openapi_sendig_dataset_variable_ref:openapi_sendig_dataset_variable_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

