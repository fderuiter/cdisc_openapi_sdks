-module(openapi_adam_product_datastructures_links).

-include("openapi.hrl").

-export([openapi_adam_product_datastructures_links/0]).

-export([openapi_adam_product_datastructures_links/1]).

-export_type([openapi_adam_product_datastructures_links/0]).

-type openapi_adam_product_datastructures_links() ::
  [ {'self', openapi_adam_product_datastructures_ref:openapi_adam_product_datastructures_ref() }
  | {'priorVersion', openapi_adam_product_datastructures_ref:openapi_adam_product_datastructures_ref() }
  | {'dataStructures', list(openapi_adam_datastructure_ref_element:openapi_adam_datastructure_ref_element()) }
  ].


openapi_adam_product_datastructures_links() ->
    openapi_adam_product_datastructures_links([]).

openapi_adam_product_datastructures_links(Fields) ->
  Default = [ {'self', openapi_adam_product_datastructures_ref:openapi_adam_product_datastructures_ref() }
            , {'priorVersion', openapi_adam_product_datastructures_ref:openapi_adam_product_datastructures_ref() }
            , {'dataStructures', list(openapi_adam_datastructure_ref_element:openapi_adam_datastructure_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

