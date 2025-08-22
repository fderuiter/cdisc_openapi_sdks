-module(openapi_sendig_dataset_links).

-include("openapi.hrl").

-export([openapi_sendig_dataset_links/0]).

-export([openapi_sendig_dataset_links/1]).

-export_type([openapi_sendig_dataset_links/0]).

-type openapi_sendig_dataset_links() ::
  [ {'self', openapi_sendig_dataset_ref:openapi_sendig_dataset_ref() }
  | {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
  | {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
  | {'parentClass', openapi_sendig_class_ref:openapi_sendig_class_ref() }
  | {'priorVersion', openapi_sendig_dataset_ref:openapi_sendig_dataset_ref() }
  ].


openapi_sendig_dataset_links() ->
    openapi_sendig_dataset_links([]).

openapi_sendig_dataset_links(Fields) ->
  Default = [ {'self', openapi_sendig_dataset_ref:openapi_sendig_dataset_ref() }
            , {'modelDataset', openapi_sdtm_dataset_ref:openapi_sdtm_dataset_ref() }
            , {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
            , {'parentClass', openapi_sendig_class_ref:openapi_sendig_class_ref() }
            , {'priorVersion', openapi_sendig_dataset_ref:openapi_sendig_dataset_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

