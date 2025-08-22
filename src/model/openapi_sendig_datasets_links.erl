-module(openapi_sendig_datasets_links).

-include("openapi.hrl").

-export([openapi_sendig_datasets_links/0]).

-export([openapi_sendig_datasets_links/1]).

-export_type([openapi_sendig_datasets_links/0]).

-type openapi_sendig_datasets_links() ::
  [ {'self', openapi_sendig_datasets_ref:openapi_sendig_datasets_ref() }
  | {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
  | {'datasets', list(openapi_sendig_dataset_ref_element:openapi_sendig_dataset_ref_element()) }
  ].


openapi_sendig_datasets_links() ->
    openapi_sendig_datasets_links([]).

openapi_sendig_datasets_links(Fields) ->
  Default = [ {'self', openapi_sendig_datasets_ref:openapi_sendig_datasets_ref() }
            , {'parentProduct', openapi_sendig_product_ref:openapi_sendig_product_ref() }
            , {'datasets', list(openapi_sendig_dataset_ref_element:openapi_sendig_dataset_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

