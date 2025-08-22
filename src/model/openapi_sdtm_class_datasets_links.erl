-module(openapi_sdtm_class_datasets_links).

-include("openapi.hrl").

-export([openapi_sdtm_class_datasets_links/0]).

-export([openapi_sdtm_class_datasets_links/1]).

-export_type([openapi_sdtm_class_datasets_links/0]).

-type openapi_sdtm_class_datasets_links() ::
  [ {'self', openapi_sdtm_class_datasets_ref:openapi_sdtm_class_datasets_ref() }
  | {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'priorVersion', openapi_sdtm_class_datasets_ref:openapi_sdtm_class_datasets_ref() }
  | {'datasets', list(openapi_sdtm_dataset_ref_element:openapi_sdtm_dataset_ref_element()) }
  ].


openapi_sdtm_class_datasets_links() ->
    openapi_sdtm_class_datasets_links([]).

openapi_sdtm_class_datasets_links(Fields) ->
  Default = [ {'self', openapi_sdtm_class_datasets_ref:openapi_sdtm_class_datasets_ref() }
            , {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'priorVersion', openapi_sdtm_class_datasets_ref:openapi_sdtm_class_datasets_ref() }
            , {'datasets', list(openapi_sdtm_dataset_ref_element:openapi_sdtm_dataset_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

