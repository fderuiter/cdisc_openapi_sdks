-module(openapi_sdtmig_dataset_links).

-include("openapi.hrl").

-export([openapi_sdtmig_dataset_links/0]).

-export([openapi_sdtmig_dataset_links/1]).

-export_type([openapi_sdtmig_dataset_links/0]).

-type openapi_sdtmig_dataset_links() ::
  [ {'self', openapi_sdtmig_dataset_ref:openapi_sdtmig_dataset_ref() }
  | {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  | {'parentProduct', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
  | {'parentClass', openapi_sdtmig_class_ref:openapi_sdtmig_class_ref() }
  | {'priorVersion', openapi_sdtmig_dataset_ref:openapi_sdtmig_dataset_ref() }
  ].


openapi_sdtmig_dataset_links() ->
    openapi_sdtmig_dataset_links([]).

openapi_sdtmig_dataset_links(Fields) ->
  Default = [ {'self', openapi_sdtmig_dataset_ref:openapi_sdtmig_dataset_ref() }
            , {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            , {'parentProduct', openapi_sdtmig_product_ref:openapi_sdtmig_product_ref() }
            , {'parentClass', openapi_sdtmig_class_ref:openapi_sdtmig_class_ref() }
            , {'priorVersion', openapi_sdtmig_dataset_ref:openapi_sdtmig_dataset_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

