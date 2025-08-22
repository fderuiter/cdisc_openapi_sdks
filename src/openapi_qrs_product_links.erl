-module(openapi_qrs_product_links).

-export([encode/1]).

-export_type([openapi_qrs_product_links/0]).

-type openapi_qrs_product_links() ::
    #{ 'self' => openapi_qrs_product_ref:openapi_qrs_product_ref(),
       'priorVersion' => openapi_qrs_product_ref:openapi_qrs_product_ref(),
       'qrsTermCAT' => openapi_root_ct_term_ref:openapi_root_ct_term_ref(),
       'qrsItems' => openapi_qrs_items_ref:openapi_qrs_items_ref()
     }.

encode(#{ 'self' := Self,
          'priorVersion' := PriorVersion,
          'qrsTermCAT' := QrsTermCAT,
          'qrsItems' := QrsItems
        }) ->
    #{ 'self' => Self,
       'priorVersion' => PriorVersion,
       'qrsTermCAT' => QrsTermCAT,
       'qrsItems' => QrsItems
     }.
