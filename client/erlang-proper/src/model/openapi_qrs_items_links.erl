-module(openapi_qrs_items_links).

-include("openapi.hrl").

-export([openapi_qrs_items_links/0]).

-export([openapi_qrs_items_links/1]).

-export_type([openapi_qrs_items_links/0]).

-type openapi_qrs_items_links() ::
  [ {'self', openapi_qrs_items_ref:openapi_qrs_items_ref() }
  | {'parentProduct', openapi_qrs_product_ref:openapi_qrs_product_ref() }
  | {'items', list(openapi_qrs_item_ref_element:openapi_qrs_item_ref_element()) }
  ].


openapi_qrs_items_links() ->
    openapi_qrs_items_links([]).

openapi_qrs_items_links(Fields) ->
  Default = [ {'self', openapi_qrs_items_ref:openapi_qrs_items_ref() }
            , {'parentProduct', openapi_qrs_product_ref:openapi_qrs_product_ref() }
            , {'items', list(openapi_qrs_item_ref_element:openapi_qrs_item_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

