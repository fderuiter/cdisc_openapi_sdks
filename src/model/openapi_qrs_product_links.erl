-module(openapi_qrs_product_links).

-include("openapi.hrl").

-export([openapi_qrs_product_links/0]).

-export([openapi_qrs_product_links/1]).

-export_type([openapi_qrs_product_links/0]).

-type openapi_qrs_product_links() ::
  [ {'self', openapi_qrs_product_ref:openapi_qrs_product_ref() }
  | {'priorVersion', openapi_qrs_product_ref:openapi_qrs_product_ref() }
  | {'qrsTermCAT', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
  | {'qrsItems', openapi_qrs_items_ref:openapi_qrs_items_ref() }
  ].


openapi_qrs_product_links() ->
    openapi_qrs_product_links([]).

openapi_qrs_product_links(Fields) ->
  Default = [ {'self', openapi_qrs_product_ref:openapi_qrs_product_ref() }
            , {'priorVersion', openapi_qrs_product_ref:openapi_qrs_product_ref() }
            , {'qrsTermCAT', openapi_root_ct_term_ref:openapi_root_ct_term_ref() }
            , {'qrsItems', openapi_qrs_items_ref:openapi_qrs_items_ref() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

