-module(openapi_sdtmig_datasets_links).

-include("openapi.hrl").

-export([openapi_sdtmig_datasets_links/0]).

-export([openapi_sdtmig_datasets_links/1]).

-export_type([openapi_sdtmig_datasets_links/0]).

-type openapi_sdtmig_datasets_links() ::
  [ {'self', openapi_sdtmig_datasets_ref:openapi_sdtmig_datasets_ref() }
  | {'parentProduct', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
  | {'priorVersion', openapi_sdtmig_datasets_ref:openapi_sdtmig_datasets_ref() }
  | {'datasets', list(openapi_sdtmig_dataset_ref_element:openapi_sdtmig_dataset_ref_element()) }
  ].


openapi_sdtmig_datasets_links() ->
    openapi_sdtmig_datasets_links([]).

openapi_sdtmig_datasets_links(Fields) ->
  Default = [ {'self', openapi_sdtmig_datasets_ref:openapi_sdtmig_datasets_ref() }
            , {'parentProduct', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
            , {'priorVersion', openapi_sdtmig_datasets_ref:openapi_sdtmig_datasets_ref() }
            , {'datasets', list(openapi_sdtmig_dataset_ref_element:openapi_sdtmig_dataset_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

