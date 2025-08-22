-module(openapi_sdtm_dataset_links).

-include("openapi.hrl").

-export([openapi_sdtm_dataset_links/0]).

-export([openapi_sdtm_dataset_links/1]).

-export_type([openapi_sdtm_dataset_links/0]).

-type openapi_sdtm_dataset_links() ::
  [ {'self', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  | {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
  | {'parentClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
  | {'priorVersion', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  ].


openapi_sdtm_dataset_links() ->
    openapi_sdtm_dataset_links([]).

openapi_sdtm_dataset_links(Fields) ->
  Default = [ {'self', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            , {'parentProduct', openapi_sdtm_product_ref:openapi_sdtm_product_ref() }
            , {'parentClass', openapi_sdtm_class_ref:openapi_sdtm_class_ref() }
            , {'priorVersion', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

